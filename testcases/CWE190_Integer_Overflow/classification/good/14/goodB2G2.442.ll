@global_var_81828 = external constant [3 x i8]
@global_var_81840 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a4 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_a237:
  %.reg2mem = alloca i32, align 4
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc0a4, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_a283, label %dec_label_pc_a261

dec_label_pc_a261:                                ; preds = %dec_label_pc_a237
  %4 = load ptr, ptr @global_var_bc0b0, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_81828, ptr nonnull %stack_var_-18)
  %.pre = load i32, ptr @global_var_bc0a4, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_a283

dec_label_pc_a283:                                ; preds = %dec_label_pc_a261, %dec_label_pc_a237
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_a2c3, label %dec_label_pc_a28e

dec_label_pc_a28e:                                ; preds = %dec_label_pc_a283
  %8 = load i8, ptr %stack_var_-18, align 1
  %9 = icmp eq i8 %8, 127
  br i1 %9, label %dec_label_pc_a2b4, label %dec_label_pc_a296

dec_label_pc_a296:                                ; preds = %dec_label_pc_a28e
  %10 = add i8 %8, 1
  store i8 %10, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %10)
  br label %dec_label_pc_a2c3

dec_label_pc_a2b4:                                ; preds = %dec_label_pc_a28e
  call void @printLine(ptr @global_var_81840)
  br label %dec_label_pc_a2c3

dec_label_pc_a2c3:                                ; preds = %dec_label_pc_a2b4, %dec_label_pc_a296, %dec_label_pc_a283
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_a2d8, label %dec_label_pc_a2d3

dec_label_pc_a2d3:                                ; preds = %dec_label_pc_a2c3
  call void @__stack_chk_fail()
  br label %dec_label_pc_a2d8

dec_label_pc_a2d8:                                ; preds = %dec_label_pc_a2d3, %dec_label_pc_a2c3
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

