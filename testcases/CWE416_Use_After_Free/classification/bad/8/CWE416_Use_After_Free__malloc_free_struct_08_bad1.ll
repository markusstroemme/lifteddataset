@global_var_320 = external constant [20 x i8]
@global_var_4a96e = external constant [10 x i8]

define i32 @staticReturnsTrue.291() local_unnamed_addr {
dec_label_pc_132c2:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_132e0:
  %stack_var_-24.0.reg2mem = alloca ptr, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = call i32 @staticReturnsTrue.291()
  %1 = icmp eq i32 %0, 0
  store ptr null, ptr %stack_var_-24.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_13376, label %dec_label_pc_13302

dec_label_pc_13302:                               ; preds = %dec_label_pc_132e0
  %2 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %3 = icmp eq ptr %2, null
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_13363.preheader, label %dec_label_pc_13317

dec_label_pc_13363.preheader:                     ; preds = %dec_label_pc_13302
  %5 = bitcast ptr %2 to ptr
  %6 = ptrtoint ptr %2 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1332b

dec_label_pc_13317:                               ; preds = %dec_label_pc_13302
  call void @exit(i32 -1)
  unreachable

dec_label_pc_1332b:                               ; preds = %dec_label_pc_1332b, %dec_label_pc_13363.preheader
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
  br i1 %exitcond, label %dec_label_pc_1336a, label %dec_label_pc_1332b

dec_label_pc_1336a:                               ; preds = %dec_label_pc_1332b
  call void @free(ptr %2)
  store ptr %5, ptr %stack_var_-24.0.reg2mem, align 8
  br label %dec_label_pc_13376

dec_label_pc_13376:                               ; preds = %dec_label_pc_1336a, %dec_label_pc_132e0
  %13 = call i32 @staticReturnsTrue.291()
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %dec_label_pc_13390, label %dec_label_pc_13384

dec_label_pc_13384:                               ; preds = %dec_label_pc_13376
  %stack_var_-24.0.reload = load ptr, ptr %stack_var_-24.0.reg2mem, align 8
  call void @printStructLine(ptr %stack_var_-24.0.reload)
  br label %dec_label_pc_13390

dec_label_pc_13390:                               ; preds = %dec_label_pc_13384, %dec_label_pc_13376
  ret void
}

define void @printStructLine(ptr %structTwoIntsStruct) local_unnamed_addr {
dec_label_pc_3ba96:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = ptrtoint ptr %structTwoIntsStruct to i64
  %3 = add i64 %2, 4
  %4 = inttoptr i64 %3 to ptr
  %5 = load i32, ptr %4, align 4
  %6 = zext i32 %5 to i64
  %7 = and i64 %1, 4294967295
  %8 = call i32 (ptr, ...) @printf(ptr @global_var_4a96e, i64 %7, i64 %6)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

