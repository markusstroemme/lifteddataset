@global_var_320 = external constant [20 x i8]
@global_var_5e4c1 = external constant [21 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i32 @staticReturnsFalse() local_unnamed_addr {
dec_label_pc_86a2:
  ret i32 0
}

define i64 @anon0() local_unnamed_addr {
dec_label_pc_879a:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %stack_var_-840.0.reg2mem = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsFalse()
  %2 = icmp eq i32 %1, 0
  %3 = icmp eq i1 %2, false
  %4 = icmp eq i1 %3, false
  br i1 %4, label %dec_label_pc_87e2, label %dec_label_pc_87d1

dec_label_pc_87d1:                                ; preds = %dec_label_pc_879a
  call void @printLine(ptr @global_var_5e4c1)
  store i64 0, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_87f3

dec_label_pc_87e2:                                ; preds = %dec_label_pc_879a
  %5 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 %5, ptr %stack_var_-840.0.reg2mem, align 8
  br label %dec_label_pc_87f3

dec_label_pc_87f3:                                ; preds = %dec_label_pc_87e2, %dec_label_pc_87d1
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %stack_var_-840.0.reload = load i64, ptr %stack_var_-840.0.reg2mem, align 8
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_8800

dec_label_pc_8800:                                ; preds = %dec_label_pc_8800, %dec_label_pc_87f3
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %7 = mul i64 %storemerge1.reload, 8
  %8 = add i64 %7, %6
  %9 = add i64 %8, -816
  %10 = inttoptr i64 %9 to ptr
  store i32 0, ptr %10, align 8
  %11 = add i64 %8, -812
  %12 = inttoptr i64 %11 to ptr
  store i32 0, ptr %12, align 4
  %13 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %13, 100
  store i64 %13, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_8836, label %dec_label_pc_8800

dec_label_pc_8836:                                ; preds = %dec_label_pc_8800
  %14 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %15 = call ptr @memcpy(ptr %14, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %16 = inttoptr i64 %stack_var_-840.0.reload to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %18 = icmp eq i64 %stack_var_-840.0.reload, 0
  br i1 %18, label %dec_label_pc_887d, label %dec_label_pc_886e

dec_label_pc_886e:                                ; preds = %dec_label_pc_8836
  %19 = ptrtoint ptr %stack_var_-824 to i64
  %20 = and i64 %19, 4294967288
  %21 = inttoptr i64 %20 to ptr
  call void @_ZdaPv(ptr %14, ptr %21)
  br label %dec_label_pc_887d

dec_label_pc_887d:                                ; preds = %dec_label_pc_886e, %dec_label_pc_8836
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %23, label %dec_label_pc_8892, label %dec_label_pc_888d

dec_label_pc_888d:                                ; preds = %dec_label_pc_887d
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_8892

dec_label_pc_8892:                                ; preds = %dec_label_pc_888d, %dec_label_pc_887d
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

