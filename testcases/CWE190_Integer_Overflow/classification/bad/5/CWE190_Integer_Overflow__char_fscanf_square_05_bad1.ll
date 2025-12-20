@global_var_6d160 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5020 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_142e0:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_a5020, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_14354, label %dec_label_pc_1432b

dec_label_pc_1432b:                               ; preds = %dec_label_pc_142e0
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6d160, ptr nonnull %stack_var_-18)
  %.pr = load i32, ptr @global_var_a5020, align 4
  %5 = icmp eq i32 %.pr, 0
  br i1 %5, label %dec_label_pc_14354, label %dec_label_pc_14335

dec_label_pc_14335:                               ; preds = %dec_label_pc_1432b
  %6 = load i8, ptr %stack_var_-18, align 1
  %7 = mul i8 %6, %6
  call void @printHexCharLine(i8 %7)
  br label %dec_label_pc_14354

dec_label_pc_14354:                               ; preds = %dec_label_pc_142e0, %dec_label_pc_14335, %dec_label_pc_1432b
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_14369, label %dec_label_pc_14364

dec_label_pc_14364:                               ; preds = %dec_label_pc_14354
  call void @__stack_chk_fail()
  br label %dec_label_pc_14369

dec_label_pc_14369:                               ; preds = %dec_label_pc_14364, %dec_label_pc_14354
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

