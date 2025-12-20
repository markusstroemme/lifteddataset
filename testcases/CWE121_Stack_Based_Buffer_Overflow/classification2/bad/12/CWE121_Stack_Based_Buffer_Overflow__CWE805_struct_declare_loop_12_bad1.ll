@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_fb07:
  %storemerge4.reg2mem = alloca i64, align 8
  %storemerge25.reg2mem = alloca i64, align 8
  %stack_var_-1624 = alloca i64, align 8
  %stack_var_-2024 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = add i64 %0, -816
  %5 = add i64 %0, -812
  store i64 0, ptr %storemerge25.reg2mem, align 8
  br label %dec_label_pc_fb5e

dec_label_pc_fb5e:                                ; preds = %dec_label_pc_fb5e, %dec_label_pc_fb07
  %storemerge25.reload = load i64, ptr %storemerge25.reg2mem, align 8
  %6 = mul i64 %storemerge25.reload, 8
  %7 = add i64 %6, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 8
  %9 = add i64 %5, %6
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge25.reload, 1
  %exitcond6 = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge25.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_fbd4.preheader, label %dec_label_pc_fb5e

dec_label_pc_fbd4.preheader:                      ; preds = %dec_label_pc_fb5e
  %stack_var_-1624.stack_var_-2024 = select i1 %3, ptr %stack_var_-1624, ptr %stack_var_-2024
  %12 = ptrtoint ptr %stack_var_-1624.stack_var_-2024 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_fba1

dec_label_pc_fba1:                                ; preds = %dec_label_pc_fba1, %dec_label_pc_fbd4.preheader
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %13 = mul i64 %storemerge4.reload, 8
  %14 = add i64 %13, %12
  %15 = add i64 %13, %4
  %16 = inttoptr i64 %15 to ptr
  %17 = load i64, ptr %16, align 8
  %18 = inttoptr i64 %14 to ptr
  store i64 %17, ptr %18, align 8
  %19 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %19, 100
  store i64 %19, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_fbde, label %dec_label_pc_fba1

dec_label_pc_fbde:                                ; preds = %dec_label_pc_fba1
  %storemerge3 = bitcast ptr %stack_var_-1624.stack_var_-2024 to ptr
  call void @printStructLine(ptr nonnull %storemerge3)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %1, %20
  br i1 %21, label %dec_label_pc_fc02, label %dec_label_pc_fbfd

dec_label_pc_fbfd:                                ; preds = %dec_label_pc_fbde
  call void @__stack_chk_fail()
  br label %dec_label_pc_fc02

dec_label_pc_fc02:                                ; preds = %dec_label_pc_fbfd, %dec_label_pc_fbde
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

