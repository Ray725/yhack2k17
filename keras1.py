import pandas as pd

import keras

from keras.models import Sequential
model = Sequential()

from keras.layers import Dense, Conv2D

people = pd.read_csv('/Users/Bera/Documents/Columbia/Clubs/Hackathons/YHacks/people.csv')
train = people.ix[0:599,0:13].values.astype('int32')
test = people.ix[0:599,14:17].values.astype('int32')
x_val = people.ix[599:999,0:13].values.astype('int32')
y_val = people.ix[599:999,14:17].values.astype('int32')

for i in range
model.add(Conv2D(3, (3, 1), activation='relu', input_shape=(10, 1)))
model.add(Dense(4, activation='relu'))

model.compile(loss='binary_crossentropy', optimizer='rmsprop')

model.fit(train, test, batch_size=32, epochs=10,validation_data=(x_val, y_val))
