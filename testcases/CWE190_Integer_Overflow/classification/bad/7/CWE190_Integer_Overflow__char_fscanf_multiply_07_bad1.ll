@global_var_6c7b8 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a501c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_f756:
  %.reg2mem3 = alloca i32, align 4
  %.reg2mem = alloca i8, align 1
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_a501c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i8 32, ptr %.reg2mem, align 1
  store i32 %1, ptr %.reg2mem3, align 4
  br i1 %3, label %dec_label_pc_f7a2, label %dec_label_pc_f780

dec_label_pc_f780:                                ; preds = %dec_label_pc_f756
  %4 = load ptr, ptr @global_var_a5080, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_6c7b8, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_a501c, align 4
  %.pre2 = load i8, ptr %stack_var_-18, align 1
  store i8 %.pre2, ptr %.reg2mem, align 1
  store i32 %.pre, ptr %.reg2mem3, align 4
  br label %dec_label_pc_f7a2

dec_label_pc_f7a2:                                ; preds = %dec_label_pc_f780, %dec_label_pc_f756
  %.reload4 = load i32, ptr %.reg2mem3, align 4
  %.reload = load i8, ptr %.reg2mem, align 1
  %6 = icmp eq i32 %.reload4, 5
  %7 = icmp eq i1 %6, false
  %8 = icmp slt i8 %.reload, 1
  %or.cond = or i1 %8, %7
  br i1 %or.cond, label %dec_label_pc_f7c9, label %dec_label_pc_f7b5

dec_label_pc_f7b5:                                ; preds = %dec_label_pc_f7a2
  %9 = mul i8 %.reload, 2
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_f7c9

dec_label_pc_f7c9:                                ; preds = %dec_label_pc_f7b5, %dec_label_pc_f7a2
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_f7de, label %dec_label_pc_f7d9

dec_label_pc_f7d9:                                ; preds = %dec_label_pc_f7c9
  call void @__stack_chk_fail()
  br label %dec_label_pc_f7de

dec_label_pc_f7de:                                ; preds = %dec_label_pc_f7d9, %dec_label_pc_f7c9
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

