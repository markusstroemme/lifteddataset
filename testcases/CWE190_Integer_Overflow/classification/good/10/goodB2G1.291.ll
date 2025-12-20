@global_var_816f8 = external constant [3 x i8]
@global_var_816fb = external constant [21 x i8]
@global_var_81710 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_bc0a0 = external local_unnamed_addr global i32
@global_var_bc4f8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_96e5:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = load i32, ptr @global_var_bc0a0, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9730, label %dec_label_pc_970e

dec_label_pc_970e:                                ; preds = %dec_label_pc_96e5
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_816f8, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_9730

dec_label_pc_9730:                                ; preds = %dec_label_pc_970e, %dec_label_pc_96e5
  %5 = load i32, ptr @global_var_bc4f8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_974b, label %dec_label_pc_973a

dec_label_pc_973a:                                ; preds = %dec_label_pc_9730
  call void @printLine(ptr @global_var_816fb)
  br label %dec_label_pc_9780

dec_label_pc_974b:                                ; preds = %dec_label_pc_9730
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_9771, label %dec_label_pc_9753

dec_label_pc_9753:                                ; preds = %dec_label_pc_974b
  %9 = add i8 %7, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_9780

dec_label_pc_9771:                                ; preds = %dec_label_pc_974b
  call void @printLine(ptr @global_var_81710)
  br label %dec_label_pc_9780

dec_label_pc_9780:                                ; preds = %dec_label_pc_9771, %dec_label_pc_9753, %dec_label_pc_973a
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_9795, label %dec_label_pc_9790

dec_label_pc_9790:                                ; preds = %dec_label_pc_9780
  call void @__stack_chk_fail()
  br label %dec_label_pc_9795

dec_label_pc_9795:                                ; preds = %dec_label_pc_9790, %dec_label_pc_9780
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

