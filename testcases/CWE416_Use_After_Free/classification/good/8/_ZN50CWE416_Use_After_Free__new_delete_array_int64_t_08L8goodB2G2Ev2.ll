@global_var_320 = external constant [20 x i8]

define i32 @staticReturnsTrue.402() local_unnamed_addr {
dec_label_pc_21043:
  ret i32 1
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_21187:
  %0 = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = call i32 @staticReturnsTrue.402()
  %3 = icmp eq i32 %2, 0
  %4 = icmp eq i1 %3, false
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_211fa, label %dec_label_pc_211a9

dec_label_pc_211a9:                               ; preds = %dec_label_pc_21187
  %6 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_211c1

dec_label_pc_211c1:                               ; preds = %dec_label_pc_211c1, %dec_label_pc_211a9
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %7 = mul i64 %storemerge2.reload, 8
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i64 5, ptr %9, align 8
  %10 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %10, 100
  store i64 %10, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_211e7, label %dec_label_pc_211c1

dec_label_pc_211e7:                               ; preds = %dec_label_pc_211c1
  %11 = icmp eq i64 %6, 0
  br i1 %11, label %dec_label_pc_211fa, label %dec_label_pc_211ee

dec_label_pc_211ee:                               ; preds = %dec_label_pc_211e7
  %12 = inttoptr i64 %6 to ptr
  %13 = and i64 %1, 4294967295
  %14 = inttoptr i64 %13 to ptr
  call void @_ZdaPv(ptr %12, ptr %14)
  br label %dec_label_pc_211fa

dec_label_pc_211fa:                               ; preds = %dec_label_pc_211ee, %dec_label_pc_211e7, %dec_label_pc_21187
  %15 = call i32 @staticReturnsTrue.402()
  %16 = sext i32 %15 to i64
  ret i64 %16
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

