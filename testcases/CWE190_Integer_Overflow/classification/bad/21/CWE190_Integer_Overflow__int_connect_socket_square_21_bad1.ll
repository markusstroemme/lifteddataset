@global_var_8f938 = external constant [10 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c336c = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_49935:
  %0 = load i32, ptr @global_var_c336c, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_49961, label %dec_label_pc_4994e

dec_label_pc_4994e:                               ; preds = %dec_label_pc_49935
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_49961

dec_label_pc_49961:                               ; preds = %dec_label_pc_4994e, %dec_label_pc_49935
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_49964:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_49a5b, label %dec_label_pc_499ae

dec_label_pc_499ae:                               ; preds = %dec_label_pc_49964
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_8f938)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 0, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_49a51, label %dec_label_pc_49a05

dec_label_pc_49a05:                               ; preds = %dec_label_pc_499ae
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 0, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_49a51, label %dec_label_pc_49a2c

dec_label_pc_49a2c:                               ; preds = %dec_label_pc_49a05
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_49a51

dec_label_pc_49a51:                               ; preds = %dec_label_pc_499ae, %dec_label_pc_49a2c, %dec_label_pc_49a05
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_49a5b

dec_label_pc_49a5b:                               ; preds = %dec_label_pc_49964, %dec_label_pc_49a51
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  store i32 1, ptr @global_var_c336c, align 4
  call void @anon1(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_49a84, label %dec_label_pc_49a7f

dec_label_pc_49a7f:                               ; preds = %dec_label_pc_49a5b
  call void @__stack_chk_fail()
  br label %dec_label_pc_49a84

dec_label_pc_49a84:                               ; preds = %dec_label_pc_49a7f, %dec_label_pc_49a5b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

