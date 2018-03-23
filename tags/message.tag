<message>

	<h4>{ msg.author }: <span>{ msg.message } {msg.timeStamp}</span></h4>

	<script>
		var that = this;
		console.log('message.tag');
	</script>

	<style>
		:scope {
			display: block;
		}
		:scope:not(:last-child) {
			margin-bottom: 1em;
		}
		span {
			padding: 0.5em;
			border: 1px solid black;
			background-color: lightgray;
		}
	</style>
</message>
