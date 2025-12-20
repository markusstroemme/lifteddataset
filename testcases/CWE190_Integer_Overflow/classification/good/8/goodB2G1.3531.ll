@global_var_70f70 = external constant [21 x i8]
@global_var_70f88 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.351() local_unnamed_addr {
dec_label_pc_15587:
  ret i32 1
}

define i32 @staticReturnsFalse.352() local_unnamed_addr {
dec_label_pc_15596:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_15638:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsTrue.351()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_156a3, label %dec_label_pc_1565a

dec_label_pc_1565a:                               ; preds = %dec_label_pc_15638
  %2 = call i32 @rand()
  %3 = urem i32 %2, 2
  %4 = icmp eq i32 %3, 0
  %5 = call i32 @rand()
  %6 = mul i32 %5, 1073741824
  %7 = call i32 @rand()
  %8 = mul i32 %7, 32768
  %9 = xor i32 %8, %6
  %10 = call i32 @rand()
  %11 = xor i32 %9, %10
  %12 = sext i1 %4 to i32
  %storemerge.in = xor i32 %11, %12
  store i32 %storemerge.in, ptr %stack_var_-32.0.reg2mem, align 4
  br label %dec_label_pc_156a3

dec_label_pc_156a3:                               ; preds = %dec_label_pc_1565a, %dec_label_pc_15638
  %13 = call i32 @staticReturnsFalse.352()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_156c2, label %dec_label_pc_156b1

dec_label_pc_156b1:                               ; preds = %dec_label_pc_156a3
  call void @printLine(ptr @global_var_70f70)
  br label %dec_label_pc_15702

dec_label_pc_156c2:                               ; preds = %dec_label_pc_156a3
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %stack_var_-32.0.off = add i32 %stack_var_-32.0.reload, 46339
  %15 = icmp ugt i32 %stack_var_-32.0.off, 92678
  br i1 %15, label %dec_label_pc_156f3, label %dec_label_pc_156dd

dec_label_pc_156dd:                               ; preds = %dec_label_pc_156c2
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_15702

dec_label_pc_156f3:                               ; preds = %dec_label_pc_156c2
  call void @printLine(ptr @global_var_70f88)
  br label %dec_label_pc_15702

dec_label_pc_15702:                               ; preds = %dec_label_pc_156f3, %dec_label_pc_156dd, %dec_label_pc_156b1
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

