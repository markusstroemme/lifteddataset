@global_var_87cd0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_4f9bd:
  %0 = call i32 @anon0(i32 0)
  %.off = add i32 %0, 46339
  %1 = icmp ugt i32 %.off, 92678
  br i1 %1, label %dec_label_pc_4fa0d, label %dec_label_pc_4f9f8

dec_label_pc_4f9f8:                               ; preds = %dec_label_pc_4f9bd
  %2 = mul i32 %0, %0
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_4fa1d

dec_label_pc_4fa0d:                               ; preds = %dec_label_pc_4f9bd
  call void @printLine(ptr @global_var_87cd0)
  br label %dec_label_pc_4fa1d

dec_label_pc_4fa1d:                               ; preds = %dec_label_pc_4fa0d, %dec_label_pc_4f9f8
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_4fa6d:
  ret i32 2147483647
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

