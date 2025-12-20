@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83408 = external constant [3 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_1ccab:
  %stack_var_-28.0.reg2mem = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = icmp eq i32 %1, 0
  store i32 2, ptr %stack_var_-28.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_1cd06, label %dec_label_pc_1ccdb

dec_label_pc_1ccdb:                               ; preds = %dec_label_pc_1ccab
  %3 = load ptr, ptr @global_var_b8080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_83408)
  store i32 0, ptr %stack_var_-28.0.reg2mem, align 4
  br label %dec_label_pc_1cd06

dec_label_pc_1cd06:                               ; preds = %dec_label_pc_1ccab, %dec_label_pc_1ccdb
  %stack_var_-28.0.reload = load i32, ptr %stack_var_-28.0.reg2mem, align 4
  %5 = call i32 @globalReturnsTrueOrFalse()
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %stack_var_-28.0.reload, 0
  br i1 %6, label %dec_label_pc_1cd2f, label %dec_label_pc_1cd14

dec_label_pc_1cd14:                               ; preds = %dec_label_pc_1cd06
  br i1 %7, label %dec_label_pc_1cd63, label %dec_label_pc_1cd1b

dec_label_pc_1cd1b:                               ; preds = %dec_label_pc_1cd14
  %8 = mul i32 %stack_var_-28.0.reload, 2
  call void @printIntLine(i32 %8)
  br label %dec_label_pc_1cd63

dec_label_pc_1cd2f:                               ; preds = %dec_label_pc_1cd06
  br i1 %7, label %dec_label_pc_1cd63, label %dec_label_pc_1cd40

dec_label_pc_1cd40:                               ; preds = %dec_label_pc_1cd2f
  %9 = mul i32 %stack_var_-28.0.reload, 2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_1cd63

dec_label_pc_1cd63:                               ; preds = %dec_label_pc_1cd40, %dec_label_pc_1cd2f, %dec_label_pc_1cd1b, %dec_label_pc_1cd14
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_1cd78, label %dec_label_pc_1cd73

dec_label_pc_1cd73:                               ; preds = %dec_label_pc_1cd63
  call void @__stack_chk_fail()
  br label %dec_label_pc_1cd78

dec_label_pc_1cd78:                               ; preds = %dec_label_pc_1cd73, %dec_label_pc_1cd63
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6ecb9:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

