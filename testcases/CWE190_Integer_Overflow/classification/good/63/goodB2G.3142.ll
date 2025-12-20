@global_var_70c28 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_13853:
  %stack_var_-36 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  store i32 %storemerge.in, ptr %stack_var_-36, align 4
  call void @anon0(ptr nonnull %stack_var_-36)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_138e0, label %dec_label_pc_138db

dec_label_pc_138db:                               ; preds = %dec_label_pc_13853
  call void @__stack_chk_fail()
  br label %dec_label_pc_138e0

dec_label_pc_138e0:                               ; preds = %dec_label_pc_138db, %dec_label_pc_13853
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1396d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_139b8, label %dec_label_pc_1398c

dec_label_pc_1398c:                               ; preds = %dec_label_pc_1396d
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_139a9, label %dec_label_pc_13995

dec_label_pc_13995:                               ; preds = %dec_label_pc_1398c
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_139b8

dec_label_pc_139a9:                               ; preds = %dec_label_pc_1398c
  call void @printLine(ptr @global_var_70c28)
  br label %dec_label_pc_139b8

dec_label_pc_139b8:                               ; preds = %dec_label_pc_139a9, %dec_label_pc_13995, %dec_label_pc_1396d
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

