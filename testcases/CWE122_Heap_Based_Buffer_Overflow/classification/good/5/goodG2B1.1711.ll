@global_var_4bf79 = external constant [21 x i8]
@global_var_640d8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_1106a:
  %storemerge2.reg2mem = alloca i64, align 8
  %stack_var_-136.0.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_640d8, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_110a8, label %dec_label_pc_11097

dec_label_pc_11097:                               ; preds = %dec_label_pc_1106a
  call void @printLine(ptr @global_var_4bf79)
  store ptr null, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_110ce

dec_label_pc_110a8:                               ; preds = %dec_label_pc_1106a
  %3 = call ptr @malloc(i32 100)
  %4 = icmp eq ptr %3, null
  %5 = icmp eq i1 %4, false
  br i1 %5, label %dec_label_pc_110c7, label %dec_label_pc_110bd

dec_label_pc_110bd:                               ; preds = %dec_label_pc_110a8
  call void @exit(i32 -1)
  unreachable

dec_label_pc_110c7:                               ; preds = %dec_label_pc_110a8
  %6 = bitcast ptr %3 to ptr
  store i8 0, ptr %6, align 1
  store ptr %6, ptr %stack_var_-136.0.reg2mem, align 8
  br label %dec_label_pc_110ce

dec_label_pc_110ce:                               ; preds = %dec_label_pc_110c7, %dec_label_pc_11097
  %stack_var_-136.0.reload = load ptr, ptr %stack_var_-136.0.reg2mem, align 8
  %7 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %8 = ptrtoint ptr %stack_var_-136.0.reload to i64
  %9 = ptrtoint ptr %stack_var_-120 to i64
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_110f2

dec_label_pc_110f2:                               ; preds = %dec_label_pc_110f2, %dec_label_pc_110ce
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %10 = add i64 %storemerge2.reload, %8
  %11 = add i64 %storemerge2.reload, %9
  %12 = inttoptr i64 %11 to ptr
  %13 = load i8, ptr %12, align 1
  %14 = inttoptr i64 %10 to ptr
  store i8 %13, ptr %14, align 1
  %15 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %15, 100
  store i64 %15, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_11119, label %dec_label_pc_110f2

dec_label_pc_11119:                               ; preds = %dec_label_pc_110f2
  %16 = add i64 %8, 99
  %17 = inttoptr i64 %16 to ptr
  store i8 0, ptr %17, align 1
  call void @printLine(ptr %stack_var_-136.0.reload)
  %18 = bitcast ptr %stack_var_-136.0.reload to ptr
  call void @free(ptr %18)
  %19 = call i64 @__readfsqword(i64 40)
  %20 = icmp eq i64 %0, %19
  br i1 %20, label %dec_label_pc_11151, label %dec_label_pc_1114c

dec_label_pc_1114c:                               ; preds = %dec_label_pc_11119
  call void @__stack_chk_fail()
  br label %dec_label_pc_11151

dec_label_pc_11151:                               ; preds = %dec_label_pc_1114c, %dec_label_pc_11119
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_3deb3:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_3ded6, label %dec_label_pc_3deca

dec_label_pc_3deca:                               ; preds = %dec_label_pc_3deb3
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_3ded6

dec_label_pc_3ded6:                               ; preds = %dec_label_pc_3deca, %dec_label_pc_3deb3
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

