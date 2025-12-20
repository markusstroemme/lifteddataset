@global_var_8bc58 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_63f80:
  call void @anon0(i32 -1)
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_63ffe:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_64066:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_64091, label %dec_label_pc_6407b

dec_label_pc_6407b:                               ; preds = %dec_label_pc_64066
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_640a0

dec_label_pc_64091:                               ; preds = %dec_label_pc_64066
  call void @printLine(ptr @global_var_8bc58)
  br label %dec_label_pc_640a0

dec_label_pc_640a0:                               ; preds = %dec_label_pc_64091, %dec_label_pc_6407b
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

