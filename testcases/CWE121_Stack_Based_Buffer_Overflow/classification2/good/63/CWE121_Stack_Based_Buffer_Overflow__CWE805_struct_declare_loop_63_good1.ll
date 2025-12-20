@global_var_30136 = external constant [10 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_124d6:
  %dataBadBuffer_-832 = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  store i64 %1, ptr %dataBadBuffer_-832, align 8
  %2 = bitcast ptr %dataBadBuffer_-832 to ptr
  call void @anon0(ptr nonnull %2)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_12526, label %dec_label_pc_12521

dec_label_pc_12521:                               ; preds = %dec_label_pc_124d6
  call void @__stack_chk_fail()
  br label %dec_label_pc_12526

dec_label_pc_12526:                               ; preds = %dec_label_pc_12521, %dec_label_pc_124d6
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_12626:
  %storemerge3.reg2mem = alloca ptr, align 8
  %storemerge24.reg2mem = alloca ptr, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = add i64 %0, -816
  %3 = add i64 %0, -812
  store ptr null, ptr %storemerge24.reg2mem, align 8
  br label %dec_label_pc_12669

dec_label_pc_12669:                               ; preds = %dec_label_pc_12626, %dec_label_pc_12669
  %storemerge24.reload = load ptr, ptr %storemerge24.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge24.reload to i64
  %5 = mul i64 %4, 8
  %6 = add i64 %5, %2
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %3, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge24.reg2mem, align 8
  br i1 %12, label %dec_label_pc_126df.preheader, label %dec_label_pc_12669

dec_label_pc_126df.preheader:                     ; preds = %dec_label_pc_12669
  %13 = ptrtoint ptr %dataPtr to i64
  store ptr null, ptr %storemerge3.reg2mem, align 8
  br label %dec_label_pc_126ac

dec_label_pc_126ac:                               ; preds = %dec_label_pc_126df.preheader, %dec_label_pc_126ac
  %storemerge3.reload = load ptr, ptr %storemerge3.reg2mem, align 8
  %14 = ptrtoint ptr %storemerge3.reload to i64
  %15 = mul i64 %14, 8
  %16 = add i64 %15, %13
  %17 = add i64 %15, %2
  %18 = inttoptr i64 %17 to ptr
  %19 = load i64, ptr %18, align 8
  %20 = inttoptr i64 %16 to ptr
  store i64 %19, ptr %20, align 8
  %21 = add i64 %14, 1
  %22 = inttoptr i64 %21 to ptr
  %23 = icmp ugt ptr %22, inttoptr (i64 99 to ptr)
  store ptr %22, ptr %storemerge3.reg2mem, align 8
  br i1 %23, label %dec_label_pc_126e9, label %dec_label_pc_126ac

dec_label_pc_126e9:                               ; preds = %dec_label_pc_126ac
  %24 = bitcast ptr %dataPtr to ptr
  call void @printStructLine(ptr %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %1, %25
  br i1 %26, label %dec_label_pc_1270d, label %dec_label_pc_12708

dec_label_pc_12708:                               ; preds = %dec_label_pc_126e9
  call void @__stack_chk_fail()
  br label %dec_label_pc_1270d

dec_label_pc_1270d:                               ; preds = %dec_label_pc_12708, %dec_label_pc_126e9
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_275a6:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_30136, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

