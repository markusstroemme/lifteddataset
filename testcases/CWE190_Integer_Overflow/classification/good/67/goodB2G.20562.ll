@global_var_8be18 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_64c67:
  call void @anon0(i64 4294967295)
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_64d0b:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_64d3c, label %dec_label_pc_64d26

dec_label_pc_64d26:                               ; preds = %dec_label_pc_64d0b
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_64d4b

dec_label_pc_64d3c:                               ; preds = %dec_label_pc_64d0b
  call void @printLine(ptr @global_var_8be18)
  br label %dec_label_pc_64d4b

dec_label_pc_64d4b:                               ; preds = %dec_label_pc_64d3c, %dec_label_pc_64d26
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

