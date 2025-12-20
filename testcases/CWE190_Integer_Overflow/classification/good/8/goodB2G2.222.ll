@global_var_81658 = external constant [3 x i8]
@global_var_81670 = external constant [54 x i8]
@global_var_8c833 = external constant [6 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue() local_unnamed_addr {
dec_label_pc_90bd:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_9225:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @staticReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_9274, label %dec_label_pc_9252

dec_label_pc_9252:                                ; preds = %dec_label_pc_9225
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_81658, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_9274

dec_label_pc_9274:                                ; preds = %dec_label_pc_9252, %dec_label_pc_9225
  %5 = call i32 @staticReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_92b7, label %dec_label_pc_9282

dec_label_pc_9282:                                ; preds = %dec_label_pc_9274
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp eq i8 %7, 127
  br i1 %8, label %dec_label_pc_92a8, label %dec_label_pc_928a

dec_label_pc_928a:                                ; preds = %dec_label_pc_9282
  %9 = add i8 %7, 1
  store i8 %9, ptr %stack_var_-18, align 1
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_92b7

dec_label_pc_92a8:                                ; preds = %dec_label_pc_9282
  call void @printLine(ptr @global_var_81670)
  br label %dec_label_pc_92b7

dec_label_pc_92b7:                                ; preds = %dec_label_pc_92a8, %dec_label_pc_928a, %dec_label_pc_9274
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_92cc, label %dec_label_pc_92c7

dec_label_pc_92c7:                                ; preds = %dec_label_pc_92b7
  call void @__stack_chk_fail()
  br label %dec_label_pc_92cc

dec_label_pc_92cc:                                ; preds = %dec_label_pc_92c7, %dec_label_pc_92b7
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

