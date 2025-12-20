@global_var_6c8a8 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a5070 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ffa1:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_a5070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10012, label %dec_label_pc_ffec

dec_label_pc_ffec:                                ; preds = %dec_label_pc_ffa1
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6c8a8, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_a5070, align 4
  %.pre2 = load i8, ptr %stack_var_-18, align 1
  %phitmp = icmp eq i32 %.pre, 0
  %5 = icmp slt i8 %.pre2, 1
  %or.cond = or i1 %phitmp, %5
  br i1 %or.cond, label %dec_label_pc_10012, label %dec_label_pc_fffe

dec_label_pc_fffe:                                ; preds = %dec_label_pc_ffec
  %6 = mul i8 %.pre2, 2
  call void @printHexCharLine(i8 %6)
  br label %dec_label_pc_10012

dec_label_pc_10012:                               ; preds = %dec_label_pc_ffa1, %dec_label_pc_fffe, %dec_label_pc_ffec
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_10027, label %dec_label_pc_10022

dec_label_pc_10022:                               ; preds = %dec_label_pc_10012
  call void @__stack_chk_fail()
  br label %dec_label_pc_10027

dec_label_pc_10027:                               ; preds = %dec_label_pc_10022, %dec_label_pc_10012
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

