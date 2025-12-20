@global_var_843a0 = external constant [54 x i8]
@global_var_843d6 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_24815:
  %0 = call i32 @anon0(i32 0)
  %.off = add i32 %0, 46339
  %1 = icmp ugt i32 %.off, 92678
  br i1 %1, label %dec_label_pc_24865, label %dec_label_pc_24850

dec_label_pc_24850:                               ; preds = %dec_label_pc_24815
  %2 = mul i32 %0, %0
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_24875

dec_label_pc_24865:                               ; preds = %dec_label_pc_24815
  call void @printLine(ptr @global_var_843a0)
  br label %dec_label_pc_24875

dec_label_pc_24875:                               ; preds = %dec_label_pc_24865, %dec_label_pc_24850
  ret void
}

define i32 @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_248e4:
  %stack_var_-12 = alloca i32, align 4
  store i32 %data, ptr %stack_var_-12, align 4
  %0 = load ptr, ptr @global_var_b8080, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_843d6, ptr nonnull %stack_var_-12)
  %2 = load i32, ptr %stack_var_-12, align 4
  ret i32 %2
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

