@global_var_320 = external constant [20 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_11c00:
  %storemerge1.reg2mem = alloca i64, align 8
  %.reg2mem = alloca i64, align 8
  %stack_var_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %2 = ptrtoint ptr %1 to i64
  store i64 %2, ptr %stack_var_-32, align 8
  %3 = icmp eq ptr %1, null
  %4 = icmp eq i1 %3, false
  store i64 %2, ptr %.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br i1 %4, label %dec_label_pc_11c4e, label %dec_label_pc_11c3a

dec_label_pc_11c3a:                               ; preds = %dec_label_pc_11c00
  call void @exit(i32 -1)
  unreachable

dec_label_pc_11c4e:                               ; preds = %dec_label_pc_11c00, %dec_label_pc_11c4e
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %.reload = load i64, ptr %.reg2mem, align 8
  %5 = mul i64 %storemerge1.reload, 8
  %6 = add i64 %5, %.reload
  %7 = inttoptr i64 %6 to ptr
  store i64 5, ptr %7, align 8
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %9 = load i64, ptr %stack_var_-32, align 8
  %exitcond = icmp eq i64 %8, 100
  store i64 %9, ptr %.reg2mem, align 8
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11c70, label %dec_label_pc_11c4e

dec_label_pc_11c70:                               ; preds = %dec_label_pc_11c4e
  %10 = inttoptr i64 %9 to ptr
  call void @free(ptr %10)
  %11 = bitcast ptr %stack_var_-32 to ptr
  call void @anon0(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_11c9d, label %dec_label_pc_11c98

dec_label_pc_11c98:                               ; preds = %dec_label_pc_11c70
  call void @__stack_chk_fail()
  br label %dec_label_pc_11c9d

dec_label_pc_11c9d:                               ; preds = %dec_label_pc_11c98, %dec_label_pc_11c70
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_11d28:
  ret void
}

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

