@global_var_8abd0 = external constant [3 x i8]
@global_var_8c83e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc088 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_5ceb8:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_bc088, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5cf29, label %dec_label_pc_5cf06

dec_label_pc_5cf06:                               ; preds = %dec_label_pc_5ceb8
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8abd0, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_bc088, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_5cf29, label %dec_label_pc_5cf10

dec_label_pc_5cf10:                               ; preds = %dec_label_pc_5cf06
  %6 = load i32, ptr %stack_var_-24, align 4
  %7 = add i32 %6, 1
  store i32 %7, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %7)
  br label %dec_label_pc_5cf29

dec_label_pc_5cf29:                               ; preds = %dec_label_pc_5ceb8, %dec_label_pc_5cf10, %dec_label_pc_5cf06
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_5cf3e, label %dec_label_pc_5cf39

dec_label_pc_5cf39:                               ; preds = %dec_label_pc_5cf29
  call void @__stack_chk_fail()
  br label %dec_label_pc_5cf3e

dec_label_pc_5cf3e:                               ; preds = %dec_label_pc_5cf39, %dec_label_pc_5cf29
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

