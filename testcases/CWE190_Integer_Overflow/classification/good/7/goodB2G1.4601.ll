@global_var_68b88 = external constant [3 x i8]
@global_var_68b8b = external constant [21 x i8]
@global_var_68ba0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c02c = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1968e:
  %.reg2mem = alloca i32, align 4
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c02c, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  br i1 %3, label %dec_label_pc_196dd, label %dec_label_pc_196bb

dec_label_pc_196bb:                               ; preds = %dec_label_pc_1968e
  %4 = load ptr, ptr @global_var_9c070, align 8
  %5 = call i32 (ptr, ptr, ...) @fscanf(ptr %4, ptr @global_var_68b88, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr @global_var_9c02c, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  br label %dec_label_pc_196dd

dec_label_pc_196dd:                               ; preds = %dec_label_pc_196bb, %dec_label_pc_1968e
  %.reload = load i32, ptr %.reg2mem, align 4
  %6 = icmp eq i32 %.reload, 5
  br i1 %6, label %dec_label_pc_196f9, label %dec_label_pc_196e8

dec_label_pc_196e8:                               ; preds = %dec_label_pc_196dd
  call void @printLine(ptr @global_var_68b8b)
  br label %dec_label_pc_19735

dec_label_pc_196f9:                               ; preds = %dec_label_pc_196dd
  %7 = load i32, ptr %stack_var_-24, align 4
  %.off = add i32 %7, 65534
  %8 = icmp ugt i32 %.off, 131068
  br i1 %8, label %dec_label_pc_19726, label %dec_label_pc_1970d

dec_label_pc_1970d:                               ; preds = %dec_label_pc_196f9
  %9 = mul i32 %7, %7
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_19735

dec_label_pc_19726:                               ; preds = %dec_label_pc_196f9
  call void @printLine(ptr @global_var_68ba0)
  br label %dec_label_pc_19735

dec_label_pc_19735:                               ; preds = %dec_label_pc_19726, %dec_label_pc_1970d, %dec_label_pc_196e8
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1974a, label %dec_label_pc_19745

dec_label_pc_19745:                               ; preds = %dec_label_pc_19735
  call void @__stack_chk_fail()
  br label %dec_label_pc_1974a

dec_label_pc_1974a:                               ; preds = %dec_label_pc_19745, %dec_label_pc_19735
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

