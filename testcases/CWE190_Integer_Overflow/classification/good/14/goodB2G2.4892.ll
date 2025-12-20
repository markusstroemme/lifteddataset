@global_var_68da8 = external constant [3 x i8]
@global_var_68dc0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1aa90:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1aadf, label %dec_label_pc_1aabd

dec_label_pc_1aabd:                               ; preds = %dec_label_pc_1aa90
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68da8, ptr nonnull %stack_var_-24)
  %.pre = load i32, ptr @global_var_9c06c, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_1aadf

dec_label_pc_1aadf:                               ; preds = %dec_label_pc_1aabd, %dec_label_pc_1aa90
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_1ab26, label %dec_label_pc_1aaea

dec_label_pc_1aaea:                               ; preds = %dec_label_pc_1aadf
  %8 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %8, 65534
  %9 = icmp ugt i32 %.off, 131068
  br i1 %9, label %dec_label_pc_1ab17, label %dec_label_pc_1aafe

dec_label_pc_1aafe:                               ; preds = %dec_label_pc_1aaea
  %10 = mul i32 %8, %8
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_1ab26

dec_label_pc_1ab17:                               ; preds = %dec_label_pc_1aaea
  call void @printLine(ptr @global_var_68dc0)
  br label %dec_label_pc_1ab26

dec_label_pc_1ab26:                               ; preds = %dec_label_pc_1ab17, %dec_label_pc_1aafe, %dec_label_pc_1aadf
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_1ab3b, label %dec_label_pc_1ab36

dec_label_pc_1ab36:                               ; preds = %dec_label_pc_1ab26
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ab3b

dec_label_pc_1ab3b:                               ; preds = %dec_label_pc_1ab36, %dec_label_pc_1ab26
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

