#!/bin/bash

# Telegram bot details
BOT_TOKEN="Your Bot Token"
CHAT_ID="Your Chat Id (Group Id)"
MESSAGE_THREAD_ID="Thread Id"

# Get the current day and time
CURRENT_DAY=$(date +%A)
CURRENT_TIME=$(date +%H:%M)

# Function to send a poll request
send_poll() {
  local question="$1"
  curl -s -X POST https://api.telegram.org/bot$BOT_TOKEN/sendPoll \
        -d chat_id="$CHAT_ID" \
        -d message_thread_id="$MESSAGE_THREAD_ID" \
        -d question="$question" \
        -d options='["Yes", "No"]' \
        -d is_anonymous=true
}

# Monday schedule
if [ "$CURRENT_DAY" == "Monday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:30") send_poll "Did you drink juice?" ;;
        "10:00") send_poll "Did you have 5 almonds, 3 cashews, and raisins?" ;;
        "10:30") send_poll "Did you have pea?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "14:00") send_poll "Did you eat a banana?" ;;
        "15:00") send_poll "Did you eat a carrot?" ;;
        "18:00") send_poll "Did you drink milk?" ;;
        "20:00") send_poll "Did you have your dinner?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi

# Tuesday schedule
if [ "$CURRENT_DAY" == "Tuesday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:10") send_poll "Did you drink juice?" ;;
        "10:00") send_poll "Did you have 3 almonds and 5 cashews?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "14:00") send_poll "Did you eat cucumber?" ;;
        "14:30") send_poll "Did you eat pomegranate?" ;;
        "18:00") send_poll "Did you drink milk?" ;;
        "20:00") send_poll "Did you have your dinner with egg?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi

# Wednesday schedule
if [ "$CURRENT_DAY" == "Wednesday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:10") send_poll "Did you drink juice?" ;;
        "10:10") send_poll "Did you eat 5 almonds and 3 cashews?" ;;
        "10:30") send_poll "Did you have Green Dal?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "14:00") send_poll "Did you eat a banana?" ;;
        "15:00") send_poll "Did you eat guava?" ;;
        "18:00") send_poll "Did you drink milk?" ;;
        "18:30") send_poll "Did you eat corn?" ;;
        "20:00") send_poll "Did you have your dinner?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi

# Thursday schedule
if [ "$CURRENT_DAY" == "Thursday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:30") send_poll "Did you drink juice?" ;;
        "10:00") send_poll "Did you eat Peanuts?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "13:35") send_poll "Did you eat corn?" ;;
        "15:00") send_poll "Did you eat grapes?" ;;
        "18:00") send_poll "Did you drink spinach vada?" ;;
        "20:00") send_poll "Did you have your dinner with egg?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi

# Friday schedule
if [ "$CURRENT_DAY" == "Friday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:10") send_poll "Did you drink juice?" ;;
        "10:50") send_poll "Did you eat 5 almonds and 3 cashews?" ;;
        "11:20") send_poll "Did you have Lima Beans?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "14:00") send_poll "Did you eat cucumber?" ;;
        "15:00") send_poll "Did you eat an apple?" ;;
        "18:00") send_poll "Did you drink milk?" ;;
        "20:00") send_poll "Did you have your dinner?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi

# Saturday schedule
if [ "$CURRENT_DAY" == "Saturday" ]; then
  case "$CURRENT_TIME" in
        "07:30") send_poll "Did you have your breakfast (Nutrient flour)?" ;;
        "09:10") send_poll "Did you drink juice?" ;;
        "10:50") send_poll "Did you eat 3 almonds and 5 cashews?" ;;
        "10:30") send_poll "Did you eat channa?" ;;
        "13:00") send_poll "Did you have your lunch?" ;;
        "15:00") send_poll "Did you eat fruits?" ;;
        "18:00") send_poll "Did you drink milk?" ;;
        "20:00") send_poll "Did you have your dinner with egg?" ;;
        "22:00") send_poll "Did you drink milk?" ;;
  esac
fi
