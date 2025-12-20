@global_var_7c820 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_225b2:
  %0 = call ptr @malloc(i32 200)
  %1 = icmp eq ptr %0, null
  %2 = icmp eq i1 %1, false
  br i1 %2, label %dec_label_pc_225e5, label %dec_label_pc_225db

dec_label_pc_225db:                               ; preds = %dec_label_pc_225b2
  call void @exit(i32 -1)
  unreachable

dec_label_pc_225e5:                               ; preds = %dec_label_pc_225b2
  %3 = bitcast ptr %0 to ptr
  call void @anon1(ptr %3)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2264b:
  call void @anon2(ptr %data)
  ret void
}

define void @anon2(ptr %data) local_unnamed_addr {
dec_label_pc_22689:
  call void @anon3(ptr %data)
  ret void
}

define void @anon3(ptr %data) local_unnamed_addr {
dec_label_pc_226c7:
  %storemerge2.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 50)
  %3 = ptrtoint ptr %data to i64
  %4 = add i64 %0, -416
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_22710

dec_label_pc_22710:                               ; preds = %dec_label_pc_22710, %dec_label_pc_226c7
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %5 = mul i64 %storemerge2.reload, 4
  %6 = add i64 %5, %3
  %7 = add i64 %4, %5
  %8 = inttoptr i64 %7 to ptr
  %9 = load i32, ptr %8, align 4
  %10 = inttoptr i64 %6 to ptr
  store i32 %9, ptr %10, align 4
  %11 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %11, 100
  store i64 %11, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2274b, label %dec_label_pc_22710

dec_label_pc_2274b:                               ; preds = %dec_label_pc_22710
  %12 = bitcast ptr %rdi to ptr
  %13 = load i32, ptr %12, align 8
  call void @printIntLine(i32 %13)
  %14 = bitcast ptr %data to ptr
  call void @free(ptr %14)
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %1, %15
  br i1 %16, label %dec_label_pc_2277f, label %dec_label_pc_2277a

dec_label_pc_2277a:                               ; preds = %dec_label_pc_2274b
  call void @__stack_chk_fail()
  br label %dec_label_pc_2277f

dec_label_pc_2277f:                               ; preds = %dec_label_pc_2277a, %dec_label_pc_2274b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_65801:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7c820, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

