@global_var_320 = external constant [20 x i8]

define i64 @anon0() local_unnamed_addr {
dec_label_pc_1e378:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @globalReturnsTrue()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_1e404, label %dec_label_pc_1e39a

dec_label_pc_1e39a:                               ; preds = %dec_label_pc_1e378
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1e3b2

dec_label_pc_1e3b2:                               ; preds = %dec_label_pc_1e3b2, %dec_label_pc_1e39a
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
  br i1 %exitcond, label %dec_label_pc_1e3f1, label %dec_label_pc_1e3b2

dec_label_pc_1e3f1:                               ; preds = %dec_label_pc_1e3b2
  %13 = icmp eq i64 %6, 0
  br i1 %13, label %dec_label_pc_1e404, label %dec_label_pc_1e3f8

dec_label_pc_1e3f8:                               ; preds = %dec_label_pc_1e3f1
  %14 = inttoptr i64 %6 to ptr
  %15 = and i64 %1, 4294967295
  %16 = inttoptr i64 %15 to ptr
  call void @_ZdaPv(ptr %14, ptr %16)
  br label %dec_label_pc_1e404

dec_label_pc_1e404:                               ; preds = %dec_label_pc_1e3f8, %dec_label_pc_1e3f1, %dec_label_pc_1e378
  %17 = call i32 @globalReturnsTrue()
  %18 = sext i32 %17 to i64
  ret i64 %18
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_3bd17:
  ret i32 1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

