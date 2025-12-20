@global_var_81608 = external constant [3 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8e06:
  %.reg2mem = alloca i32, align 4
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_8e52, label %dec_label_pc_8e30

dec_label_pc_8e30:                                ; preds = %dec_label_pc_8e06
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_81608, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_bc014, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_8e52

dec_label_pc_8e52:                                ; preds = %dec_label_pc_8e30, %dec_label_pc_8e06
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_8e79, label %dec_label_pc_8e5d

dec_label_pc_8e5d:                                ; preds = %dec_label_pc_8e52
  %8 = load i8, ptr %stack_var_-18, align 1
  %9 = add i8 %8, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_8e79

dec_label_pc_8e79:                                ; preds = %dec_label_pc_8e5d, %dec_label_pc_8e52
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_8e8e, label %dec_label_pc_8e89

dec_label_pc_8e89:                                ; preds = %dec_label_pc_8e79
  call void @__stack_chk_fail()
  br label %dec_label_pc_8e8e

dec_label_pc_8e8e:                                ; preds = %dec_label_pc_8e89, %dec_label_pc_8e79
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

