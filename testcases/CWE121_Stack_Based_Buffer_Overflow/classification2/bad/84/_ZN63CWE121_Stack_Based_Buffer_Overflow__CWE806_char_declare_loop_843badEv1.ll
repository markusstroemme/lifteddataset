@0 = external global i32

define void @anon0(ptr %result, ptr %arg2) local_unnamed_addr {
dec_label_pc_71752:
  %0 = ptrtoint ptr %result to i64
  %1 = ptrtoint ptr %arg2 to i64
  store i64 %1, ptr %result, align 8
  %2 = call ptr @memset(ptr %result, i32 65, i32 99)
  %3 = add i64 %0, 99
  %4 = inttoptr i64 %3 to ptr
  store i8 0, ptr %4, align 1
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7179c:
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = bitcast ptr %result to ptr
  %2 = call i32 @strlen(ptr %1)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_7183b, label %dec_label_pc_7180e.lr.ph

dec_label_pc_7180e.lr.ph:                         ; preds = %dec_label_pc_7179c
  %4 = ptrtoint ptr %result to i64
  %5 = sext i32 %2 to i64
  %6 = ptrtoint ptr %stack_var_-72 to i64
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_7180e

dec_label_pc_7180e:                               ; preds = %dec_label_pc_7180e.lr.ph, %dec_label_pc_7180e
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = add i64 %storemerge1.reload, %4
  %8 = inttoptr i64 %7 to ptr
  %9 = load i8, ptr %8, align 1
  %10 = add i64 %storemerge1.reload, %6
  %11 = inttoptr i64 %10 to ptr
  store i8 %9, ptr %11, align 1
  %12 = add nuw i64 %storemerge1.reload, 1
  %13 = icmp ult i64 %12, %5
  store i64 %12, ptr %storemerge1.reg2mem, align 8
  br i1 %13, label %dec_label_pc_7180e, label %dec_label_pc_7183b

dec_label_pc_7183b:                               ; preds = %dec_label_pc_7180e, %dec_label_pc_7179c
  call void @printLine(ptr %1)
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_71863, label %dec_label_pc_7185e

dec_label_pc_7185e:                               ; preds = %dec_label_pc_7183b
  call void @__stack_chk_fail()
  br label %dec_label_pc_71863

dec_label_pc_71863:                               ; preds = %dec_label_pc_7185e, %dec_label_pc_7183b
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_71979:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-136 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %stack_var_-136 to ptr
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  call void @anon0(ptr %3, ptr nonnull %1)
  %4 = icmp eq i64 %2, 0
  br i1 %4, label %dec_label_pc_71a0a, label %dec_label_pc_719d4

dec_label_pc_719d4:                               ; preds = %dec_label_pc_71979
  call void @anon1(ptr %3)
  %5 = call i64 @_ZdlPvm(ptr %3, i64 8)
  br label %dec_label_pc_71a0a

dec_label_pc_71a0a:                               ; preds = %dec_label_pc_719d4, %dec_label_pc_71979
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_71a1f, label %dec_label_pc_71a1a

dec_label_pc_71a1a:                               ; preds = %dec_label_pc_71a0a
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_71a1f

dec_label_pc_71a1f:                               ; preds = %dec_label_pc_71a1a, %dec_label_pc_71a0a
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

