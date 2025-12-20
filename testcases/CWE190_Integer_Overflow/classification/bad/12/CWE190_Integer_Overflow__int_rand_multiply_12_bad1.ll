@global_var_70730 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10b34:
  %storemerge1.reg2mem = alloca i32, align 4
  %0 = call i32 @globalReturnsTrueOrFalse()
  %1 = icmp eq i32 %0, 0
  store i32 2, ptr %storemerge1.reg2mem, align 4
  br i1 %1, label %dec_label_pc_10ba8, label %dec_label_pc_10b56

dec_label_pc_10b56:                               ; preds = %dec_label_pc_10b34
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
  store i32 %storemerge.in, ptr %storemerge1.reg2mem, align 4
  br label %dec_label_pc_10ba8

dec_label_pc_10ba8:                               ; preds = %dec_label_pc_10b34, %dec_label_pc_10b56
  %storemerge1.reload = load i32, ptr %storemerge1.reg2mem, align 4
  %13 = call i32 @globalReturnsTrueOrFalse()
  %14 = icmp eq i32 %13, 0
  %15 = icmp slt i32 %storemerge1.reload, 1
  br i1 %14, label %dec_label_pc_10bd0, label %dec_label_pc_10bb6

dec_label_pc_10bb6:                               ; preds = %dec_label_pc_10ba8
  br i1 %15, label %dec_label_pc_10c02, label %dec_label_pc_10bbc

dec_label_pc_10bbc:                               ; preds = %dec_label_pc_10bb6
  %16 = mul i32 %storemerge1.reload, 2
  call void @printIntLine(i32 %16)
  br label %dec_label_pc_10c02

dec_label_pc_10bd0:                               ; preds = %dec_label_pc_10ba8
  br i1 %15, label %dec_label_pc_10c02, label %dec_label_pc_10bd6

dec_label_pc_10bd6:                               ; preds = %dec_label_pc_10bd0
  %17 = icmp sgt i32 %storemerge1.reload, 1073741822
  br i1 %17, label %dec_label_pc_10bf3, label %dec_label_pc_10bdf

dec_label_pc_10bdf:                               ; preds = %dec_label_pc_10bd6
  %18 = mul i32 %storemerge1.reload, 2
  call void @printIntLine(i32 %18)
  br label %dec_label_pc_10c02

dec_label_pc_10bf3:                               ; preds = %dec_label_pc_10bd6
  call void @printLine(ptr @global_var_70730)
  br label %dec_label_pc_10c02

dec_label_pc_10c02:                               ; preds = %dec_label_pc_10bf3, %dec_label_pc_10bdf, %dec_label_pc_10bd0, %dec_label_pc_10bbc, %dec_label_pc_10bb6
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

