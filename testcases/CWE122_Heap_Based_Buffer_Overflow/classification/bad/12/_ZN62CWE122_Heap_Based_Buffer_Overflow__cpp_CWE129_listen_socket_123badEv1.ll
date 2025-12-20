@global_var_ae5e8 = external constant [32 x i8]
@global_var_ae608 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_520aa:
  %rax.0.reg2mem = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv18.reg2mem = alloca i64, align 8
  %indvars.iv21.reg2mem = alloca i64, align 8
  %indvars.iv24.reg2mem = alloca i64, align 8
  %rsi.1.reg2mem = alloca i64, align 8
  %stack_var_-96.1.reg2mem = alloca i32, align 4
  %stack_var_-96.0.ph.reg2mem = alloca i32, align 4
  %rsi.0.ph.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  store i32 7, ptr %stack_var_-96.1.reg2mem, align 4
  br i1 %4, label %dec_label_pc_52209, label %dec_label_pc_520de

dec_label_pc_520de:                               ; preds = %dec_label_pc_520aa
  %5 = call i32 @socket(i32 2, i32 1, i32 6)
  %6 = icmp eq i32 %5, -1
  store i32 -1, ptr %stack_var_-96.1.reg2mem, align 4
  store i64 1, ptr %rsi.1.reg2mem, align 8
  br i1 %6, label %dec_label_pc_52209, label %dec_label_pc_5210d

dec_label_pc_5210d:                               ; preds = %dec_label_pc_520de
  %7 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %8 = call i16 @htons(i16 27015)
  %9 = ptrtoint ptr %stack_var_-56 to i64
  %10 = bitcast ptr %stack_var_-56 to ptr
  %11 = call i32 @bind(i32 %5, ptr nonnull %10, i32 16)
  %12 = icmp eq i32 %11, -1
  %13 = icmp eq i1 %12, false
  %14 = icmp eq i1 %13, false
  store i64 %9, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_521f0.thread13, label %dec_label_pc_5215e

dec_label_pc_5215e:                               ; preds = %dec_label_pc_5210d
  %15 = call i32 @listen(i32 %5, i32 5)
  %16 = icmp eq i32 %15, -1
  %17 = icmp eq i1 %16, false
  %18 = icmp eq i1 %17, false
  store i64 5, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %18, label %dec_label_pc_521f0.thread13, label %dec_label_pc_52177

dec_label_pc_52177:                               ; preds = %dec_label_pc_5215e
  %19 = call i32 @accept(i32 %5, ptr null, ptr null)
  %20 = icmp eq i32 %19, -1
  store i64 0, ptr %rsi.0.ph.ph.reg2mem, align 8
  br i1 %20, label %dec_label_pc_521f0.thread13, label %dec_label_pc_52194

dec_label_pc_52194:                               ; preds = %dec_label_pc_52177
  %21 = call i32 @recv(i32 %19, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %22 = add i32 %21, 1
  %23 = icmp ult i32 %22, 2
  store i32 -1, ptr %stack_var_-96.0.ph.reg2mem, align 4
  br i1 %23, label %dec_label_pc_521f6, label %dec_label_pc_521bb

dec_label_pc_521bb:                               ; preds = %dec_label_pc_52194
  %24 = ptrtoint ptr %stack_var_-8 to i64
  %25 = sext i32 %21 to i64
  %26 = add i64 %24, -22
  %27 = add i64 %26, %25
  %28 = inttoptr i64 %27 to ptr
  store i8 0, ptr %28, align 1
  %29 = bitcast ptr %stack_var_-30 to ptr
  %30 = call i32 @atoi(ptr nonnull %29)
  store i32 %30, ptr %stack_var_-96.0.ph.reg2mem, align 4
  br label %dec_label_pc_521f6

dec_label_pc_521f0.thread13:                      ; preds = %dec_label_pc_52177, %dec_label_pc_5215e, %dec_label_pc_5210d
  %rsi.0.ph.ph.reload = load i64, ptr %rsi.0.ph.ph.reg2mem, align 8
  %31 = call i32 @close(i32 %5)
  store i32 -1, ptr %stack_var_-96.1.reg2mem, align 4
  store i64 %rsi.0.ph.ph.reload, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_52209

dec_label_pc_521f6:                               ; preds = %dec_label_pc_521bb, %dec_label_pc_52194
  %32 = ptrtoint ptr %stack_var_-30 to i64
  %stack_var_-96.0.ph.reload = load i32, ptr %stack_var_-96.0.ph.reg2mem, align 4
  %33 = call i32 @close(i32 %5)
  %34 = call i32 @close(i32 %19)
  store i32 %stack_var_-96.0.ph.reload, ptr %stack_var_-96.1.reg2mem, align 4
  store i64 %32, ptr %rsi.1.reg2mem, align 8
  br label %dec_label_pc_52209

dec_label_pc_52209:                               ; preds = %dec_label_pc_520de, %dec_label_pc_521f0.thread13, %dec_label_pc_520aa, %dec_label_pc_521f6
  %rsi.1.reload = load i64, ptr %rsi.1.reg2mem, align 8
  %stack_var_-96.1.reload = load i32, ptr %stack_var_-96.1.reg2mem, align 4
  %35 = call i32 @globalReturnsTrueOrFalse()
  %36 = icmp eq i32 %35, 0
  %37 = icmp eq i1 %36, false
  %38 = icmp eq i1 %37, false
  %39 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv24.reg2mem, align 8
  store i64 0, ptr %indvars.iv18.reg2mem, align 8
  br i1 %38, label %dec_label_pc_522ea, label %dec_label_pc_52232

dec_label_pc_52232:                               ; preds = %dec_label_pc_52209, %dec_label_pc_52232
  %indvars.iv24.reload = load i64, ptr %indvars.iv24.reg2mem, align 8
  %40 = mul i64 %indvars.iv24.reload, 4
  %41 = add i64 %40, %39
  %42 = inttoptr i64 %41 to ptr
  store i32 0, ptr %42, align 4
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24.reload, 1
  %exitcond26 = icmp eq i64 %indvars.iv.next25, 10
  store i64 %indvars.iv.next25, ptr %indvars.iv24.reg2mem, align 8
  br i1 %exitcond26, label %dec_label_pc_52256, label %dec_label_pc_52232

dec_label_pc_52256:                               ; preds = %dec_label_pc_52232
  %43 = icmp slt i32 %stack_var_-96.1.reload, 0
  br i1 %43, label %dec_label_pc_522a8, label %dec_label_pc_5225c

dec_label_pc_5225c:                               ; preds = %dec_label_pc_52256
  %44 = sext i32 %stack_var_-96.1.reload to i64
  %45 = mul i64 %44, 4
  %46 = add i64 %39, %45
  %47 = inttoptr i64 %46 to ptr
  store i32 1, ptr %47, align 4
  store i64 0, ptr %indvars.iv21.reg2mem, align 8
  br label %dec_label_pc_5227f

dec_label_pc_5227f:                               ; preds = %dec_label_pc_5227f, %dec_label_pc_5225c
  %indvars.iv21.reload = load i64, ptr %indvars.iv21.reg2mem, align 8
  %48 = mul i64 %indvars.iv21.reload, 4
  %49 = add i64 %48, %39
  %50 = inttoptr i64 %49 to ptr
  %51 = load i32, ptr %50, align 4
  call void @printIntLine(i32 %51)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21.reload, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 10
  store i64 %indvars.iv.next22, ptr %indvars.iv21.reg2mem, align 8
  br i1 %exitcond23, label %dec_label_pc_522b7, label %dec_label_pc_5227f

dec_label_pc_522a8:                               ; preds = %dec_label_pc_52256
  call void @printLine(ptr @global_var_ae5e8)
  br label %dec_label_pc_522b7

dec_label_pc_522b7:                               ; preds = %dec_label_pc_5227f, %dec_label_pc_522a8
  %52 = icmp eq i64 %39, 0
  br i1 %52, label %dec_label_pc_52388, label %dec_label_pc_522c2

dec_label_pc_522c2:                               ; preds = %dec_label_pc_522b7
  %53 = inttoptr i64 %39 to ptr
  %54 = and i64 %rsi.1.reload, 4294967295
  %55 = inttoptr i64 %54 to ptr
  call void @_ZdaPv(ptr %53, ptr %55)
  br label %dec_label_pc_52388

dec_label_pc_522ea:                               ; preds = %dec_label_pc_52209, %dec_label_pc_522ea
  %indvars.iv18.reload = load i64, ptr %indvars.iv18.reg2mem, align 8
  %56 = mul i64 %indvars.iv18.reload, 4
  %57 = add i64 %56, %39
  %58 = inttoptr i64 %57 to ptr
  store i32 0, ptr %58, align 4
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18.reload, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 10
  store i64 %indvars.iv.next19, ptr %indvars.iv18.reg2mem, align 8
  br i1 %exitcond20, label %dec_label_pc_5230e, label %dec_label_pc_522ea

dec_label_pc_5230e:                               ; preds = %dec_label_pc_522ea
  %59 = icmp ugt i32 %stack_var_-96.1.reload, 9
  br i1 %59, label %dec_label_pc_52366, label %dec_label_pc_5231a

dec_label_pc_5231a:                               ; preds = %dec_label_pc_5230e
  %60 = sext i32 %stack_var_-96.1.reload to i64
  %61 = mul i64 %60, 4
  %62 = add i64 %39, %61
  %63 = inttoptr i64 %62 to ptr
  store i32 1, ptr %63, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5233d

dec_label_pc_5233d:                               ; preds = %dec_label_pc_5233d, %dec_label_pc_5231a
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %64 = mul i64 %indvars.iv.reload, 4
  %65 = add i64 %64, %39
  %66 = inttoptr i64 %65 to ptr
  %67 = load i32, ptr %66, align 4
  call void @printIntLine(i32 %67)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_52375, label %dec_label_pc_5233d

dec_label_pc_52366:                               ; preds = %dec_label_pc_5230e
  call void @printLine(ptr @global_var_ae608)
  br label %dec_label_pc_52375

dec_label_pc_52375:                               ; preds = %dec_label_pc_5233d, %dec_label_pc_52366
  %68 = icmp eq i64 %39, 0
  br i1 %68, label %dec_label_pc_52388, label %dec_label_pc_5237c

dec_label_pc_5237c:                               ; preds = %dec_label_pc_52375
  %69 = inttoptr i64 %39 to ptr
  %70 = and i64 %rsi.1.reload, 4294967295
  %71 = inttoptr i64 %70 to ptr
  call void @_ZdaPv(ptr %69, ptr %71)
  br label %dec_label_pc_52388

dec_label_pc_52388:                               ; preds = %dec_label_pc_5237c, %dec_label_pc_52375, %dec_label_pc_522c2, %dec_label_pc_522b7
  %72 = call i64 @__readfsqword(i64 40)
  %73 = icmp eq i64 %0, %72
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %73, label %dec_label_pc_5239d, label %dec_label_pc_52398

dec_label_pc_52398:                               ; preds = %dec_label_pc_52388
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_5239d

dec_label_pc_5239d:                               ; preds = %dec_label_pc_52398, %dec_label_pc_52388
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_91bc4:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_91be7, label %dec_label_pc_91bdb

dec_label_pc_91bdb:                               ; preds = %dec_label_pc_91bc4
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_91be7

dec_label_pc_91be7:                               ; preds = %dec_label_pc_91bdb, %dec_label_pc_91bc4
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_91c1f:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_b1f38, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_920f2:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

