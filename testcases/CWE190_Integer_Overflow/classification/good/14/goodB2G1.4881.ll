@global_var_68da8 = external constant [3 x i8]
@global_var_68dab = external constant [21 x i8]
@global_var_68dc0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1a9d2:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1aa21, label %dec_label_pc_1a9ff

dec_label_pc_1a9ff:                               ; preds = %dec_label_pc_1a9d2
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68da8, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c06c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1aa21

dec_label_pc_1aa21:                               ; preds = %dec_label_pc_1a9ff, %dec_label_pc_1a9d2
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1aa3d, label %dec_label_pc_1aa2c

dec_label_pc_1aa2c:                               ; preds = %dec_label_pc_1aa21
  call void @printLine(ptr @global_var_68dab)
  br label %dec_label_pc_1aa79

dec_label_pc_1aa3d:                               ; preds = %dec_label_pc_1aa21
  %7 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %7, 65534
  %8 = icmp ugt i32 %.off, 131068
  br i1 %8, label %dec_label_pc_1aa6a, label %dec_label_pc_1aa51

dec_label_pc_1aa51:                               ; preds = %dec_label_pc_1aa3d
  %9 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_1aa79

dec_label_pc_1aa6a:                               ; preds = %dec_label_pc_1aa3d
  call void @printLine(ptr @global_var_68dc0)
  br label %dec_label_pc_1aa79

dec_label_pc_1aa79:                               ; preds = %dec_label_pc_1aa6a, %dec_label_pc_1aa51, %dec_label_pc_1aa2c
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1aa8e, label %dec_label_pc_1aa89

dec_label_pc_1aa89:                               ; preds = %dec_label_pc_1aa79
  call void @__stack_chk_fail()
  br label %dec_label_pc_1aa8e

dec_label_pc_1aa8e:                               ; preds = %dec_label_pc_1aa89, %dec_label_pc_1aa79
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

