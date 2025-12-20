@global_var_6c710 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5018 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f204:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_a5018, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_f275, label %dec_label_pc_f24f

dec_label_pc_f24f:                                ; preds = %dec_label_pc_f204
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6c710, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_a5018, align 4
  %.pre2 = load i8, ptr %stack_var_-18, align 1
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i8 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_f275, label %dec_label_pc_f261

dec_label_pc_f261:                                ; preds = %dec_label_pc_f24f
  %6 = mul i8 %.pre2, 2
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_f275

dec_label_pc_f275:                                ; preds = %dec_label_pc_f204, %dec_label_pc_f261, %dec_label_pc_f24f
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_f28a, label %dec_label_pc_f285

dec_label_pc_f285:                                ; preds = %dec_label_pc_f275
  call void @__stack_chk_fail()
  br label %dec_label_pc_f28a

dec_label_pc_f28a:                                ; preds = %dec_label_pc_f285, %dec_label_pc_f275
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

