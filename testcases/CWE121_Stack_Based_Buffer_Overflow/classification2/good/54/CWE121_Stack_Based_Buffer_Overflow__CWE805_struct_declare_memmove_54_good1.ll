@global_var_30136 = external constant [10 x i8]
@global_var_320 = external constant i32

define void @anon4() local_unnamed_addr {
dec_label_pc_1b813:
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-824 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1b863, label %dec_label_pc_1b85e

dec_label_pc_1b85e:                               ; preds = %dec_label_pc_1b813
  call void @__stack_chk_fail()
  br label %dec_label_pc_1b863

dec_label_pc_1b863:                               ; preds = %dec_label_pc_1b85e, %dec_label_pc_1b813
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_1b899:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_1b8d7:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_1b915:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_1b9e0:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_1ba12

dec_label_pc_1ba12:                               ; preds = %dec_label_pc_1ba12, %dec_label_pc_1b9e0
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %2 = mul i64 %storemerge2.reload, 8
  %3 = add i64 %2, %0
  %4 = add i64 %3, -816
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  %6 = add i64 %3, -812
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1ba48, label %dec_label_pc_1ba12

dec_label_pc_1ba48:                               ; preds = %dec_label_pc_1ba12
  %9 = bitcast ptr %data to ptr
  %10 = call ptr @memmove(ptr %9, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printStructLine(ptr %data)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_1ba8a, label %dec_label_pc_1ba85

dec_label_pc_1ba85:                               ; preds = %dec_label_pc_1ba48
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ba8a

dec_label_pc_1ba8a:                               ; preds = %dec_label_pc_1ba85, %dec_label_pc_1ba48
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

declare ptr @memmove(ptr, ptr, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

