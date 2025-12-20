@global_var_320 = external constant [20 x i8]

define i32 @staticReturnsTrue.400() local_unnamed_addr {
dec_label_pc_1d87c:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1d9f0:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.400()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1da7c, label %dec_label_pc_1da12

dec_label_pc_1da12:                               ; preds = %dec_label_pc_1d9f0
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1da2a

dec_label_pc_1da2a:                               ; preds = %dec_label_pc_1da2a, %dec_label_pc_1da12
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  %10 = add i64 %8, 4
  %11 = inttoptr i64 %10 to ptr
  store i32 2, ptr %11, align 4
  %12 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %12, 100
  store i64 %12, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1da69, label %dec_label_pc_1da2a

dec_label_pc_1da69:                               ; preds = %dec_label_pc_1da2a
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %dec_label_pc_1da7c, label %dec_label_pc_1da70

dec_label_pc_1da70:                               ; preds = %dec_label_pc_1da69
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_1da7c

dec_label_pc_1da7c:                               ; preds = %dec_label_pc_1da70, %dec_label_pc_1da69, %dec_label_pc_1d9f0
  %17 = call i32 @staticReturnsTrue.400()
  %18 = sext i32 %17 to i64
  ret i64 %18
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

