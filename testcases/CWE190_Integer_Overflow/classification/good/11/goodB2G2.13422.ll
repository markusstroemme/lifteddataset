@global_var_877d8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_4d9ad:
  %0 = call i32 @globalReturnsTrue()
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4da23, label %dec_label_pc_4d9e3

dec_label_pc_4d9e3:                               ; preds = %dec_label_pc_4d9ad
  %3 = icmp eq i32 %0, 0
  br i1 %3, label %dec_label_pc_4d9fe, label %dec_label_pc_4da14

dec_label_pc_4d9fe:                               ; preds = %dec_label_pc_4d9e3
  call void @printIntLine(i32 0)
  br label %dec_label_pc_4da23

dec_label_pc_4da14:                               ; preds = %dec_label_pc_4d9e3
  call void @printLine(ptr @global_var_877d8)
  br label %dec_label_pc_4da23

dec_label_pc_4da23:                               ; preds = %dec_label_pc_4da14, %dec_label_pc_4d9fe, %dec_label_pc_4d9ad
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6ec9b:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

