@global_var_76be8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_4613a:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %11 = ptrtoint ptr %arg1 to i64
  store i32 %storemerge.in, ptr %arg1, align 4
  ret i64 %11
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_461a2:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_46204, label %dec_label_pc_461d7

dec_label_pc_461d7:                               ; preds = %dec_label_pc_461a2
  %4 = icmp sgt i32 %2, 1073741822
  br i1 %4, label %dec_label_pc_461f5, label %dec_label_pc_461e1

dec_label_pc_461e1:                               ; preds = %dec_label_pc_461d7
  %5 = mul i32 %2, 2
  call void @printIntLine(i32 %5)
  br label %dec_label_pc_46204

dec_label_pc_461f5:                               ; preds = %dec_label_pc_461d7
  call void @printLine(ptr @global_var_76be8)
  br label %dec_label_pc_46204

dec_label_pc_46204:                               ; preds = %dec_label_pc_461f5, %dec_label_pc_461e1, %dec_label_pc_461a2
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_46219, label %dec_label_pc_46214

dec_label_pc_46214:                               ; preds = %dec_label_pc_46204
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_46219

dec_label_pc_46219:                               ; preds = %dec_label_pc_46214, %dec_label_pc_46204
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

