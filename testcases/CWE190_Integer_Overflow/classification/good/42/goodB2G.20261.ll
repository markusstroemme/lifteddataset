@global_var_8bb78 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_63b06:
  ret i32 -1
}

define void @anon1() local_unnamed_addr {
dec_label_pc_63b1d:
  %0 = call i32 @anon0(i32 0)
  %1 = icmp eq i32 %0, -1
  br i1 %1, label %dec_label_pc_63b59, label %dec_label_pc_63b43

dec_label_pc_63b43:                               ; preds = %dec_label_pc_63b1d
  %2 = add i32 %0, 1
  call void @printUnsignedLine(i32 %2)
  br label %dec_label_pc_63b68

dec_label_pc_63b59:                               ; preds = %dec_label_pc_63b1d
  call void @printLine(ptr @global_var_8bb78)
  br label %dec_label_pc_63b68

dec_label_pc_63b68:                               ; preds = %dec_label_pc_63b59, %dec_label_pc_63b43
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

