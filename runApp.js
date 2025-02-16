const readline = require('readline')
const { exec, spawn } = require('child_process')

const rl = readline.createInterface({
	input: process.stdin,
	output: process.stdout,
})

const deleteTempFile = (fileName) => {
	exec(`del ${fileName}`, (err) => {
		if (err) {
			console.error(
				`❌ Error deleting temporary file ${fileName}: ${err.message}`
			)
		} else {
			console.log(`✅ Temporary file ${fileName} deleted.`)
		}
	})
}

rl.question('Select the lab number: ', (labNumber) => {
	rl.question('Enter the task number: ', (taskNumber) => {
		const labDir = `lab-${labNumber}`
		const taskFile = `task${taskNumber}.swift`

		console.log(`Starting file: Sources/${labDir}/${taskFile}`)

		exec(
			`del temp.exe & swiftc -o temp.exe Sources/${labDir}/${taskFile}`,
			(error, stdout, stderr) => {
				if (error) {
					console.error(`❌ Compilation error: ${error.message}`)
					console.error(`❌ Compiler output:\n${stderr}`)
					return
				}
				console.log('\n✅ Compilation successful, running...\n')

				console.log(`\n===== Lab ${labNumber}, Task ${taskNumber} =====\n`)
				const process = spawn('temp.exe', { stdio: 'inherit' })

				process.on('error', (err) => {
					console.error(`❌ Execution error: ${err.message}`)
				})

				process.on('exit', (code) => {
					console.log('\n==============')
					console.log(`\n✅ Program finished with exit code: ${code}\n`)

					deleteTempFile('temp.exe')
					deleteTempFile('temp.exp')
					deleteTempFile('temp.lib')
				})
			}
		)

		rl.close()
	})
})
