@global_var_83728 = external constant [4 x i8]
@global_var_8ca89 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_17303:
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-32, align 8
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_17356, label %dec_label_pc_17334

dec_label_pc_17334:                               ; preds = %dec_label_pc_17303
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83728, ptr nonnull %stack_var_-32)
  br label %dec_label_pc_17356

dec_label_pc_17356:                               ; preds = %dec_label_pc_17334, %dec_label_pc_17303
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_17384, label %dec_label_pc_17364

dec_label_pc_17364:                               ; preds = %dec_label_pc_17356
  %7 = load i64, ptr %stack_var_-32, align 8
  %8 = add i64 %7, 1
  store i64 %8, ptr %stack_var_-32, align 8
  call void @printLongLongLine(i64 %8)
  br label %dec_label_pc_17384

dec_label_pc_17384:                               ; preds = %dec_label_pc_17364, %dec_label_pc_17356
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_17399, label %dec_label_pc_17394

dec_label_pc_17394:                               ; preds = %dec_label_pc_17384
  call void @__stack_chk_fail()
  br label %dec_label_pc_17399

dec_label_pc_17399:                               ; preds = %dec_label_pc_17394, %dec_label_pc_17384
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca89, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

