@global_var_7c82d = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon3() local_unnamed_addr {
dec_label_pc_12144:
  %0 = call ptr @malloc(i32 ptrtoint (ptr @global_var_320 to i32))
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_12177, label %dec_label_pc_1216d

dec_label_pc_1216d:                               ; preds = %dec_label_pc_12144
  call void @exit(i32 -1)
  unreachable

dec_label_pc_12177:                               ; preds = %dec_label_pc_12144
  call void @anon0(ptr %0)
  ret void
}

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_121ba:
  call void @anon1(ptr %data)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_121f8:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_122d5:
  %0 = alloca i1, align 1
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i1, ptr %0, align 1
  %2 = ptrtoint ptr %data to i64
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %3 = ptrtoint ptr %stack_var_-8 to i64
  %4 = call i64 @__readfsqword(i64 40)
  %5 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 100)
  %6 = add i64 %3, -816
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_1231e

dec_label_pc_1231e:                               ; preds = %dec_label_pc_1231e, %dec_label_pc_122d5
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %2
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i64, ptr %10, align 8
  %12 = inttoptr i64 %8 to ptr
  store i64 %11, ptr %12, align 8
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_1235b, label %dec_label_pc_1231e

dec_label_pc_1235b:                               ; preds = %dec_label_pc_1231e
  %14 = select i1 %1, i64 -800, i64 800
  %15 = ptrtoint ptr %stack_var_-824 to i64
  %16 = add i64 %14, %15
  call void @printLongLongLine(i64 %16)
  call void @free(ptr %data)
  %17 = call i64 @__readfsqword(i64 40)
  %18 = icmp eq i64 %4, %17
  br i1 %18, label %dec_label_pc_12391, label %dec_label_pc_1238c

dec_label_pc_1238c:                               ; preds = %dec_label_pc_1235b
  call void @__stack_chk_fail()
  br label %dec_label_pc_12391

dec_label_pc_12391:                               ; preds = %dec_label_pc_1238c, %dec_label_pc_1235b
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_658c4:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c82d, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

