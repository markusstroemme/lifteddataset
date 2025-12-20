@global_var_ae890 = external constant [21 x i8]
@global_var_ae8a8 = external constant [36 x i8]
@global_var_b1f38 = external constant [4 x i8]
@0 = external global i32
@global_var_dc1ac = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_55b7b:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_55cbf, label %dec_label_pc_55bcc

dec_label_pc_55bcc:                               ; preds = %dec_label_pc_55b7b
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_55caf.thread8, label %dec_label_pc_55c1d

dec_label_pc_55c1d:                               ; preds = %dec_label_pc_55bcc
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_55caf.thread8, label %dec_label_pc_55c36

dec_label_pc_55c36:                               ; preds = %dec_label_pc_55c1d
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_55caf.thread8, label %dec_label_pc_55c53

dec_label_pc_55c53:                               ; preds = %dec_label_pc_55c36
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  store i32 -1, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %18, label %dec_label_pc_55cb5, label %dec_label_pc_55c7a

dec_label_pc_55c7a:                               ; preds = %dec_label_pc_55c53
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_55cb5

dec_label_pc_55caf.thread8:                       ; preds = %dec_label_pc_55c36, %dec_label_pc_55c1d, %dec_label_pc_55bcc
  %26 = call i32 @close(i32 %1)
  store i32 -1, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_55cbf

dec_label_pc_55cb5:                               ; preds = %dec_label_pc_55c7a, %dec_label_pc_55c53
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_55cbf

dec_label_pc_55cbf:                               ; preds = %dec_label_pc_55b7b, %dec_label_pc_55caf.thread8, %dec_label_pc_55cb5
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 0, ptr @global_var_dc1ac, align 4
  %29 = call i64 @anon1(i32 %stack_var_-72.047.reload)
  %30 = call i64 @__readfsqword(i64 40)
  %31 = icmp eq i64 %0, %30
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %31, label %dec_label_pc_55ce8, label %dec_label_pc_55ce3

dec_label_pc_55ce3:                               ; preds = %dec_label_pc_55cbf
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_55ce8

dec_label_pc_55ce8:                               ; preds = %dec_label_pc_55ce3, %dec_label_pc_55cbf
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(i32 %arg1) local_unnamed_addr {
dec_label_pc_55f73:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = load i32, ptr @global_var_dc1ac, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %dec_label_pc_55fa0, label %dec_label_pc_55f8c

dec_label_pc_55f8c:                               ; preds = %dec_label_pc_55f73
  call void @printLine(ptr @global_var_ae890)
  br label %dec_label_pc_56055

dec_label_pc_55fa0:                               ; preds = %dec_label_pc_55f73
  %4 = call i64 @_Znam(i64 40)
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br label %dec_label_pc_55fb7

dec_label_pc_55fb7:                               ; preds = %dec_label_pc_55fb7, %dec_label_pc_55fa0
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %5 = mul i64 %indvars.iv5.reload, 4
  %6 = add i64 %5, %4
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_55fdb, label %dec_label_pc_55fb7

dec_label_pc_55fdb:                               ; preds = %dec_label_pc_55fb7
  %8 = icmp ugt i32 %arg1, 9
  br i1 %8, label %dec_label_pc_56033, label %dec_label_pc_55fe7

dec_label_pc_55fe7:                               ; preds = %dec_label_pc_55fdb
  %9 = sext i32 %arg1 to i64
  %10 = mul i64 %9, 4
  %11 = add i64 %4, %10
  %12 = inttoptr i64 %11 to ptr
  store i32 1, ptr %12, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5600a

dec_label_pc_5600a:                               ; preds = %dec_label_pc_5600a, %dec_label_pc_55fe7
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %13 = mul i64 %indvars.iv.reload, 4
  %14 = add i64 %13, %4
  %15 = inttoptr i64 %14 to ptr
  %16 = load i32, ptr %15, align 4
  call void @printIntLine(i32 %16)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_56042, label %dec_label_pc_5600a

dec_label_pc_56033:                               ; preds = %dec_label_pc_55fdb
  call void @printLine(ptr @global_var_ae8a8)
  br label %dec_label_pc_56042

dec_label_pc_56042:                               ; preds = %dec_label_pc_5600a, %dec_label_pc_56033
  %17 = icmp eq i64 %4, 0
  br i1 %17, label %dec_label_pc_56055, label %dec_label_pc_56049

dec_label_pc_56049:                               ; preds = %dec_label_pc_56042
  %18 = inttoptr i64 %4 to ptr
  %19 = and i64 %1, 4294967295
  %20 = inttoptr i64 %19 to ptr
  call void @_ZdaPv(ptr %18, ptr %20)
  br label %dec_label_pc_56055

dec_label_pc_56055:                               ; preds = %dec_label_pc_56049, %dec_label_pc_56042, %dec_label_pc_55f8c
  ret i64 ptrtoint (ptr @0 to i64)
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

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

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

