@global_var_8bc90 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon3() local_unnamed_addr {
dec_label_pc_640f1:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_6416f:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_641c3:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_6422b:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_64256, label %dec_label_pc_64240

dec_label_pc_64240:                               ; preds = %dec_label_pc_6422b
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_64265

dec_label_pc_64256:                               ; preds = %dec_label_pc_6422b
  call void @printLine(ptr @global_var_8bc90)
  br label %dec_label_pc_64265

dec_label_pc_64265:                               ; preds = %dec_label_pc_64256, %dec_label_pc_64240
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

