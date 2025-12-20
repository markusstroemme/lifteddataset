@global_var_81608 = external constant [3 x i8]
@global_var_8160b = external constant [21 x i8]
@global_var_81620 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc014 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8e90:
  %.reg2mem = alloca i32, align 4
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc014, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_8edc, label %dec_label_pc_8eba

dec_label_pc_8eba:                                ; preds = %dec_label_pc_8e90
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_81608, ptr nonnull %stack_var_-18)
  %.pr = load i32, ptr @global_var_bc014, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_8edc

dec_label_pc_8edc:                                ; preds = %dec_label_pc_8eba, %dec_label_pc_8e90
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_8ef8, label %dec_label_pc_8ee7

dec_label_pc_8ee7:                                ; preds = %dec_label_pc_8edc
  call void @printLine(ptr @global_var_8160b)
  br label %dec_label_pc_8f2d

dec_label_pc_8ef8:                                ; preds = %dec_label_pc_8edc
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_8f1e, label %dec_label_pc_8f00

dec_label_pc_8f00:                                ; preds = %dec_label_pc_8ef8
  %9 = add i8 %7, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_8f2d

dec_label_pc_8f1e:                                ; preds = %dec_label_pc_8ef8
  call void @printLine(ptr @global_var_81620)
  br label %dec_label_pc_8f2d

dec_label_pc_8f2d:                                ; preds = %dec_label_pc_8f1e, %dec_label_pc_8f00, %dec_label_pc_8ee7
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_8f42, label %dec_label_pc_8f3d

dec_label_pc_8f3d:                                ; preds = %dec_label_pc_8f2d
  call void @__stack_chk_fail()
  br label %dec_label_pc_8f42

dec_label_pc_8f42:                                ; preds = %dec_label_pc_8f3d, %dec_label_pc_8f2d
  ret void
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

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_6a2c4:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c833, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

