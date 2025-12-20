@global_var_70e78 = external constant [21 x i8]
@global_var_70e90 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9020 = external local_unnamed_addr global i32
@global_var_a9104 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14d80:
  %stack_var_-32.0.reg2mem = alloca i32, align 4
  %0 = load i32, ptr @global_var_a9020, align 4
  %1 = icmp eq i32 %0, 0
  store i32 0, ptr %stack_var_-32.0.reg2mem, align 4
  br i1 %1, label %dec_label_pc_14de7, label %dec_label_pc_14d9e

dec_label_pc_14d9e:                               ; preds = %dec_label_pc_14d80
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
  br label %dec_label_pc_14de7

dec_label_pc_14de7:                               ; preds = %dec_label_pc_14d9e, %dec_label_pc_14d80
  %13 = load i32, ptr @global_var_a9104, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_14e02, label %dec_label_pc_14df1

dec_label_pc_14df1:                               ; preds = %dec_label_pc_14de7
  call void @printLine(ptr @global_var_70e78)
  br label %dec_label_pc_14e42

dec_label_pc_14e02:                               ; preds = %dec_label_pc_14de7
  %stack_var_-32.0.reload = load i32, ptr %stack_var_-32.0.reg2mem, align 4
  %stack_var_-32.0.off = add i32 %stack_var_-32.0.reload, 46339
  %15 = icmp ugt i32 %stack_var_-32.0.off, 92678
  br i1 %15, label %dec_label_pc_14e33, label %dec_label_pc_14e1d

dec_label_pc_14e1d:                               ; preds = %dec_label_pc_14e02
  %16 = mul i32 %stack_var_-32.0.reload, %stack_var_-32.0.reload
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_14e42

dec_label_pc_14e33:                               ; preds = %dec_label_pc_14e02
  call void @printLine(ptr @global_var_70e90)
  br label %dec_label_pc_14e42

dec_label_pc_14e42:                               ; preds = %dec_label_pc_14e33, %dec_label_pc_14e1d, %dec_label_pc_14df1
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

