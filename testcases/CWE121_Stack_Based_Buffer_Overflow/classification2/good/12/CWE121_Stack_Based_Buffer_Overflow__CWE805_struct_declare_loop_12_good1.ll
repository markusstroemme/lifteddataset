@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fc04:
  %storemerge4.reg2mem = alloca i64, align 8
  %storemerge25.reg2mem = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = add i64 %0, -816
  %4 = add i64 %0, -812
  store i64 0, ptr %storemerge25.reg2mem, align 8
  br label %dec_label_pc_fc5b

dec_label_pc_fc5b:                                ; preds = %dec_label_pc_fc5b, %dec_label_pc_fc04
  %storemerge25.reload = load i64, ptr %storemerge25.reg2mem, align 8
  %5 = mul i64 %storemerge25.reload, 8
  %6 = add i64 %5, %3
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 8
  %8 = add i64 %4, %5
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 4
  %10 = add nuw nsw i64 %storemerge25.reload, 1
  %exitcond6 = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge25.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_fcd1.preheader, label %dec_label_pc_fc5b

dec_label_pc_fcd1.preheader:                      ; preds = %dec_label_pc_fc5b
  %11 = ptrtoint ptr %stack_var_-1624 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_fc9e

dec_label_pc_fc9e:                                ; preds = %dec_label_pc_fc9e, %dec_label_pc_fcd1.preheader
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %12 = mul i64 %storemerge4.reload, 8
  %13 = add i64 %12, %11
  %14 = add i64 %12, %3
  %15 = inttoptr i64 %14 to ptr
  %16 = load i64, ptr %15, align 8
  %17 = inttoptr i64 %13 to ptr
  store i64 %16, ptr %17, align 8
  %18 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %18, 100
  store i64 %18, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_fcdb, label %dec_label_pc_fc9e

dec_label_pc_fcdb:                                ; preds = %dec_label_pc_fc9e
  %storemerge3 = bitcast ptr %stack_var_-1624 to ptr
  call void @printStructLine(ptr nonnull %storemerge3)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %1, %19
  br i1 %20, label %dec_label_pc_fcff, label %dec_label_pc_fcfa

dec_label_pc_fcfa:                                ; preds = %dec_label_pc_fcdb
  call void @__stack_chk_fail()
  br label %dec_label_pc_fcff

dec_label_pc_fcff:                                ; preds = %dec_label_pc_fcfa, %dec_label_pc_fcdb
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_27845:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

