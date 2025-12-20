@global_var_30136 = external constant [10 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_10786:
  %storemerge4.reg2mem = alloca i64, align 8
  %storemerge25.reg2mem = alloca i64, align 8
  %stack_var_-1224 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-8 to i64
  %2 = add i64 %1, -816
  %3 = add i64 %1, -812
  store i64 0, ptr %storemerge25.reg2mem, align 8
  br label %dec_label_pc_107db

dec_label_pc_107db:                               ; preds = %dec_label_pc_107db, %dec_label_pc_10786
  %storemerge25.reload = load i64, ptr %storemerge25.reg2mem, align 8
  %4 = mul i64 %storemerge25.reload, 8
  %5 = add i64 %4, %2
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 8
  %7 = add i64 %3, %4
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %9 = add nuw nsw i64 %storemerge25.reload, 1
  %exitcond7 = icmp eq i64 %9, 100
  store i64 %9, ptr %storemerge25.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_10851.preheader, label %dec_label_pc_107db

dec_label_pc_10851.preheader:                     ; preds = %dec_label_pc_107db
  %10 = ptrtoint ptr %stack_var_-1224 to i64
  store i64 0, ptr %storemerge4.reg2mem, align 8
  br label %dec_label_pc_1081e

dec_label_pc_1081e:                               ; preds = %dec_label_pc_1081e, %dec_label_pc_10851.preheader
  %storemerge4.reload = load i64, ptr %storemerge4.reg2mem, align 8
  %11 = mul i64 %storemerge4.reload, 8
  %12 = add i64 %11, %10
  %13 = add i64 %11, %2
  %14 = inttoptr i64 %13 to ptr
  %15 = load i64, ptr %14, align 8
  %16 = inttoptr i64 %12 to ptr
  store i64 %15, ptr %16, align 8
  %17 = add nuw nsw i64 %storemerge4.reload, 1
  %exitcond = icmp eq i64 %17, 100
  store i64 %17, ptr %storemerge4.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1085b, label %dec_label_pc_1081e

dec_label_pc_1085b:                               ; preds = %dec_label_pc_1081e
  %18 = bitcast ptr %stack_var_-1224 to ptr
  call void @printStructLine(ptr nonnull %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_1087f, label %dec_label_pc_1087a

dec_label_pc_1087a:                               ; preds = %dec_label_pc_1085b
  call void @__stack_chk_fail()
  br label %dec_label_pc_1087f

dec_label_pc_1087f:                               ; preds = %dec_label_pc_1087a, %dec_label_pc_1085b
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

