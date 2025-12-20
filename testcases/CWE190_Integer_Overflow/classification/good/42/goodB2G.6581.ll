@global_var_841e8 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_841e0 = external constant [3 x i8]

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_23aa0:
  %0 = load ptr, ptr @global_var_b8080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_841e0)
  ret i32 %data
}

define void @anon1() local_unnamed_addr {
dec_label_pc_23ad6:
  %0 = call i32 @anon0(i32 0)
  %.off = add i32 %0, 46339
  %1 = icmp ugt i32 %.off, 92678
  br i1 %1, label %dec_label_pc_23b26, label %dec_label_pc_23b11

dec_label_pc_23b11:                               ; preds = %dec_label_pc_23ad6
  %2 = mul i32 %0, %0
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_23b36

dec_label_pc_23b26:                               ; preds = %dec_label_pc_23ad6
  call void @printLine(ptr @global_var_841e8)
  br label %dec_label_pc_23b36

dec_label_pc_23b36:                               ; preds = %dec_label_pc_23b26, %dec_label_pc_23b11
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

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

