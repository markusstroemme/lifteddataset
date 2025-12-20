@global_var_320 = external constant [20 x i8]
@global_var_609dc = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_bd9e:
  %0 = call i64 @_Znam(i64 400)
  %1 = inttoptr i64 %0 to ptr
  %2 = call i64 @anon1(ptr %1)
  ret i64 %2
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_be10:
  %0 = call i64 @anon2(ptr %arg1)
  ret i64 %0
}

define i64 @anon2(ptr %arg1) local_unnamed_addr {
dec_label_pc_be4e:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge1.reg2mem = alloca i64, align 8
  %rdi = alloca i64, align 8
  %stack_var_-824 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_be80

dec_label_pc_be80:                                ; preds = %dec_label_pc_be80, %dec_label_pc_be4e
  %storemerge1.reload = load i64, ptr %storemerge1.reg2mem, align 8
  %2 = mul i64 %storemerge1.reload, 8
  %3 = add i64 %2, %0
  %4 = add i64 %3, -816
  %5 = inttoptr i64 %4 to ptr
  store i32 0, ptr %5, align 8
  %6 = add i64 %3, -812
  %7 = inttoptr i64 %6 to ptr
  store i32 0, ptr %7, align 4
  %8 = add nuw nsw i64 %storemerge1.reload, 1
  %exitcond = icmp eq i64 %8, 100
  store i64 %8, ptr %storemerge1.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_beb6, label %dec_label_pc_be80

dec_label_pc_beb6:                                ; preds = %dec_label_pc_be80
  %9 = call ptr @memcpy(ptr %arg1, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  %10 = bitcast ptr %rdi to ptr
  %11 = load i32, ptr %10, align 8
  call void @printIntLine(i32 %11)
  %12 = icmp eq ptr %arg1, null
  br i1 %12, label %dec_label_pc_befd, label %dec_label_pc_beee

dec_label_pc_beee:                                ; preds = %dec_label_pc_beb6
  %13 = ptrtoint ptr %stack_var_-824 to i64
  %14 = and i64 %13, 4294967288
  %15 = inttoptr i64 %14 to ptr
  call void @_ZdaPv(ptr nonnull %arg1, ptr %15)
  br label %dec_label_pc_befd

dec_label_pc_befd:                                ; preds = %dec_label_pc_beee, %dec_label_pc_beb6
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %1, %16
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %17, label %dec_label_pc_bf12, label %dec_label_pc_bf0d

dec_label_pc_bf0d:                                ; preds = %dec_label_pc_befd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_bf12

dec_label_pc_bf12:                                ; preds = %dec_label_pc_bf0d, %dec_label_pc_befd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i64 @__readfsqword(i64) local_unnamed_addr

