@global_var_81560 = external constant [3 x i8]
@global_var_81563 = external constant [21 x i8]
@global_var_81578 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc010 = external local_unnamed_addr global i32
@global_var_bc0bc = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_8934:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc010, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_897f, label %dec_label_pc_895d

dec_label_pc_895d:                                ; preds = %dec_label_pc_8934
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81560, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_897f

dec_label_pc_897f:                                ; preds = %dec_label_pc_895d, %dec_label_pc_8934
  %5 = load i32, ptr @global_var_bc0bc, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_899a, label %dec_label_pc_8989

dec_label_pc_8989:                                ; preds = %dec_label_pc_897f
  call void @printLine(ptr @global_var_81563)
  br label %dec_label_pc_89cf

dec_label_pc_899a:                                ; preds = %dec_label_pc_897f
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_89c0, label %dec_label_pc_89a2

dec_label_pc_89a2:                                ; preds = %dec_label_pc_899a
  %9 = add i8 %7, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_89cf

dec_label_pc_89c0:                                ; preds = %dec_label_pc_899a
  call void @printLine(ptr @global_var_81578)
  br label %dec_label_pc_89cf

dec_label_pc_89cf:                                ; preds = %dec_label_pc_89c0, %dec_label_pc_89a2, %dec_label_pc_8989
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_89e4, label %dec_label_pc_89df

dec_label_pc_89df:                                ; preds = %dec_label_pc_89cf
  call void @__stack_chk_fail()
  br label %dec_label_pc_89e4

dec_label_pc_89e4:                                ; preds = %dec_label_pc_89df, %dec_label_pc_89cf
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

