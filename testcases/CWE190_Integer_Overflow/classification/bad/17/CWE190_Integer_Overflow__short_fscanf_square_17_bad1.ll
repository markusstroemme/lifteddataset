@global_var_73130 = external constant [4 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_26820:
  %j_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %j_-28, align 4
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73130, ptr nonnull %j_-28)
  %3 = load i32, ptr %j_-28, align 4
  %4 = urem i32 %3, 65536
  %narrow = mul i32 %3, 65536
  %sext = mul i32 %narrow, %4
  %5 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %5)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_26835, label %dec_label_pc_26830

dec_label_pc_26830:                               ; preds = %dec_label_pc_26820
  call void @__stack_chk_fail()
  br label %dec_label_pc_26835

dec_label_pc_26835:                               ; preds = %dec_label_pc_26830, %dec_label_pc_26820
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

