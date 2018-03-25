<message>
<div>
	<h4>{ msg.author }: <span>{ msg.message } - at {msg.timeStamp}</span></h4>
	<i class="far fa-thumbs-up" onclick={ upvote }></i> <i class="far fa-thumbs-down" onclick={ downvote }></i><i class="far fa-trash-alt" onclick={ delete }></i>

</div>

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
