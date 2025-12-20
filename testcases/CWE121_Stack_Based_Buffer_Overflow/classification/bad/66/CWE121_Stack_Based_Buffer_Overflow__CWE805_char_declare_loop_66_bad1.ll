define void @anon0() local_unnamed_addr {
dec_label_pc_4506a:
  %stack_var_-168 = alloca i64, align 8
  %dataArray_-176 = alloca [5 x ptr], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-120 to ptr
  %2 = insertvalue [5 x ptr] undef, ptr %1, 0
  store [5 x ptr] %2, ptr %dataArray_-176, align 8
  %3 = bitcast ptr %dataArray_-176 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = inttoptr i64 %4 to ptr
  store i8 0, ptr %5, align 1
  %6 = bitcast ptr %stack_var_-168 to ptr
  call void @anon1(ptr nonnull %6)
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_450cf, label %dec_label_pc_450ca

dec_label_pc_450ca:                               ; preds = %dec_label_pc_4506a
  call void @__stack_chk_fail()
  br label %dec_label_pc_450cf

dec_label_pc_450cf:                               ; preds = %dec_label_pc_450ca, %dec_label_pc_4506a
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_4514d:
  %storemerge2.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %dataArray to i64
  %2 = add i64 %1, 16
  %3 = inttoptr i64 %2 to ptr
  %4 = load i64, ptr %3, align 8
  %5 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %6 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_451a5

dec_label_pc_451a5:                               ; preds = %dec_label_pc_4514d, %dec_label_pc_451a5
  %storemerge2.reload = load ptr, ptr %storemerge2.reg2mem, align 8
  %7 = ptrtoint ptr %storemerge2.reload to i64
  %8 = add i64 %4, %7
  %9 = add i64 %7, %6
  %10 = inttoptr i64 %9 to ptr
  %11 = load i8, ptr %10, align 1
  %12 = inttoptr i64 %8 to ptr
  store i8 %11, ptr %12, align 1
  %13 = add i64 %7, 1
  %14 = inttoptr i64 %13 to ptr
  %15 = icmp ugt ptr %14, inttoptr (i64 99 to ptr)
  store ptr %14, ptr %storemerge2.reg2mem, align 8
  br i1 %15, label %dec_label_pc_451cc, label %dec_label_pc_451a5

dec_label_pc_451cc:                               ; preds = %dec_label_pc_451a5
  %16 = inttoptr i64 %4 to ptr
  %17 = add i64 %4, 99
  %18 = inttoptr i64 %17 to ptr
  store i8 0, ptr %18, align 1
  call void @printLine(ptr %16)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_451f8, label %dec_label_pc_451f3

dec_label_pc_451f3:                               ; preds = %dec_label_pc_451cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_451f8

dec_label_pc_451f8:                               ; preds = %dec_label_pc_451f3, %dec_label_pc_451cc
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

