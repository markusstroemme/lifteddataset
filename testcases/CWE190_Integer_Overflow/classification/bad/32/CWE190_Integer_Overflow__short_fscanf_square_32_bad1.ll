@global_var_732a0 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_27231:
  %stack_var_-38 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-38, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_732a0, ptr nonnull %stack_var_-38)
  %3 = load i16, ptr %stack_var_-38, align 2
  %4 = mul i16 %3, %3
  %5 = sext i16 %4 to i32
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_272d4, label %dec_label_pc_272cf

dec_label_pc_272cf:                               ; preds = %dec_label_pc_27231
  call void @__stack_chk_fail()
  br label %dec_label_pc_272d4

dec_label_pc_272d4:                               ; preds = %dec_label_pc_272cf, %dec_label_pc_27231
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

