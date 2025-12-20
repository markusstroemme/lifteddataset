@global_var_68358 = external constant [3 x i8]
@global_var_6835b = external constant [21 x i8]
@global_var_68370 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c06c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_158bf:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c06c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_1590e, label %dec_label_pc_158ec

dec_label_pc_158ec:                               ; preds = %dec_label_pc_158bf
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68358, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c06c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_1590e

dec_label_pc_1590e:                               ; preds = %dec_label_pc_158ec, %dec_label_pc_158bf
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_1592a, label %dec_label_pc_15919

dec_label_pc_15919:                               ; preds = %dec_label_pc_1590e
  call void @printLine(ptr @global_var_6835b)
  br label %dec_label_pc_1595e

dec_label_pc_1592a:                               ; preds = %dec_label_pc_1590e
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %dec_label_pc_1595e, label %dec_label_pc_15931

dec_label_pc_15931:                               ; preds = %dec_label_pc_1592a
  %9 = icmp ult i32 %7, 2147483647
  br i1 %9, label %dec_label_pc_1593b, label %dec_label_pc_1594f

dec_label_pc_1593b:                               ; preds = %dec_label_pc_15931
  %10 = mul i32 %7, 2
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_1595e

dec_label_pc_1594f:                               ; preds = %dec_label_pc_15931
  call void @printLine(ptr @global_var_68370)
  br label %dec_label_pc_1595e

dec_label_pc_1595e:                               ; preds = %dec_label_pc_1594f, %dec_label_pc_1593b, %dec_label_pc_1592a, %dec_label_pc_15919
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_15973, label %dec_label_pc_1596e

dec_label_pc_1596e:                               ; preds = %dec_label_pc_1595e
  call void @__stack_chk_fail()
  br label %dec_label_pc_15973

dec_label_pc_15973:                               ; preds = %dec_label_pc_1596e, %dec_label_pc_1595e
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

