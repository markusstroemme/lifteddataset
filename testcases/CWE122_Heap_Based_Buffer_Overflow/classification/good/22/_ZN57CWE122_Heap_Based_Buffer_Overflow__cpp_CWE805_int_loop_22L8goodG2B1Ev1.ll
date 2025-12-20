@global_var_5fd1c = external constant [21 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32
@global_var_7f1b4 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_37aa6:
  %0 = alloca i64, align 8
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-424 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = ptrtoint ptr %stack_var_-8 to i64
  %3 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr @global_var_7f1b4, align 4
  %4 = call i64 @anon1(ptr null)
  %5 = bitcast ptr %stack_var_-424 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %5, i64 0, i64 50)
  %6 = add i64 %2, -416
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_37b13

dec_label_pc_37b13:                               ; preds = %dec_label_pc_37b13, %dec_label_pc_37aa6
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 4
  %8 = add i64 %7, %4
  %9 = add i64 %6, %7
  %10 = inttoptr i64 %9 to ptr
  %11 = load i32, ptr %10, align 4
  %12 = inttoptr i64 %8 to ptr
  store i32 %11, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_37b4e, label %dec_label_pc_37b13

dec_label_pc_37b4e:                               ; preds = %dec_label_pc_37b13
  %14 = inttoptr i64 %4 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %16 = icmp eq i64 %4, 0
  br i1 %16, label %dec_label_pc_37b77, label %dec_label_pc_37b68

dec_label_pc_37b68:                               ; preds = %dec_label_pc_37b4e
  %17 = inttoptr i64 %4 to ptr
  %18 = and i64 %1, 4294967295
  %19 = inttoptr i64 %18 to ptr
  call void @_ZdaPv(ptr %17, ptr %19)
  br label %dec_label_pc_37b77

dec_label_pc_37b77:                               ; preds = %dec_label_pc_37b68, %dec_label_pc_37b4e
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %3, %20
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %21, label %dec_label_pc_37b8c, label %dec_label_pc_37b87

dec_label_pc_37b87:                               ; preds = %dec_label_pc_37b77
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_37b8c

dec_label_pc_37b8c:                               ; preds = %dec_label_pc_37b87, %dec_label_pc_37b77
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_37cb9:
  %stack_var_-16.0.reg2mem = alloca ptr, align 8
  %0 = load i32, ptr @global_var_7f1b4, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_37ce4, label %dec_label_pc_37cd3

dec_label_pc_37cd3:                               ; preds = %dec_label_pc_37cb9
  call void @printLine(ptr @global_var_5fd1c)
  store ptr %arg1, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_37cf2

dec_label_pc_37ce4:                               ; preds = %dec_label_pc_37cb9
  %2 = call i64 @_Znam(i64 400)
  %3 = inttoptr i64 %2 to ptr
  store ptr %3, ptr %stack_var_-16.0.reg2mem, align 8
  br label %dec_label_pc_37cf2

dec_label_pc_37cf2:                               ; preds = %dec_label_pc_37ce4, %dec_label_pc_37cd3
  %stack_var_-16.0.reload = load ptr, ptr %stack_var_-16.0.reg2mem, align 8
  %4 = ptrtoint ptr %stack_var_-16.0.reload to i64
  ret i64 %4
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_4d978:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_4d99b, label %dec_label_pc_4d98f

dec_label_pc_4d98f:                               ; preds = %dec_label_pc_4d978
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_4d99b

dec_label_pc_4d99b:                               ; preds = %dec_label_pc_4d98f, %dec_label_pc_4d978
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_4d9d3:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_609dc, i64 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

