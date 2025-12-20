@global_var_70608 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define i32 @staticReturnsTrue.229() local_unnamed_addr {
dec_label_pc_ff9a:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_10113:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = call i32 @staticReturnsTrue.229()
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_1017e, label %dec_label_pc_10135

dec_label_pc_10135:                               ; preds = %dec_label_pc_10113
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
  br label %dec_label_pc_1017e

dec_label_pc_1017e:                               ; preds = %dec_label_pc_10135, %dec_label_pc_10113
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %13 = call i32 @staticReturnsTrue.229()
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %stack_var_-32.0.reload, 1
  %or.cond = or i1 %15, %14
  br i1 %or.cond, label %dec_label_pc_101be, label %dec_label_pc_10192

dec_label_pc_10192:                               ; preds = %dec_label_pc_1017e
  %16 = icmp sgt i32 %stack_var_-32.0.reload, 1073741822
  br i1 %16, label %dec_label_pc_101af, label %dec_label_pc_1019b

dec_label_pc_1019b:                               ; preds = %dec_label_pc_10192
  %17 = mul i32 %stack_var_-32.0.reload, 2
  call void @printIntLine(i32 %17)
  br label %dec_label_pc_101be

dec_label_pc_101af:                               ; preds = %dec_label_pc_10192
  call void @printLine(ptr @global_var_70608)
  br label %dec_label_pc_101be

dec_label_pc_101be:                               ; preds = %dec_label_pc_101af, %dec_label_pc_1019b, %dec_label_pc_1017e
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

