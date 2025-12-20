@global_var_83a80 = external constant [54 x i8]
@global_var_83ab6 = external constant [4 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1a194:
  %0 = call i64 @anon0(i64 0)
  %1 = icmp eq i64 %0, 9223372036854775807
  br i1 %1, label %dec_label_pc_1a1e3, label %dec_label_pc_1a1c8

dec_label_pc_1a1c8:                               ; preds = %dec_label_pc_1a194
  %2 = add i64 %0, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1a1f2

dec_label_pc_1a1e3:                               ; preds = %dec_label_pc_1a194
  call void @printLine(ptr @global_var_83a80)
  br label %dec_label_pc_1a1f2

dec_label_pc_1a1f2:                               ; preds = %dec_label_pc_1a1e3, %dec_label_pc_1a1c8
  ret void
}

define i64 @anon0(i64 %data) local_unnamed_addr {
dec_label_pc_1a266:
  %stack_var_-16 = alloca i64, align 8
  store i64 %data, ptr %stack_var_-16, align 8
  %0 = load ptr, ptr @global_var_bc0b0, align 8
  %1 = call i32 (ptr, ptr, ...) @fscanf(ptr %0, ptr @global_var_83ab6, ptr nonnull %stack_var_-16)
  %2 = load i64, ptr %stack_var_-16, align 8
  ret i64 %2
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

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

